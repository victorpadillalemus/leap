class BookingsController < ApplicationController


  def index
    @bookings = policy_scope(Booking)
  end
  
  def new
    @booking = Booking.new
  end

  def create
    # {"transit_date"=>"", "arrival"=>"10", "arrive"=>"12 :30", "departure"=>"23", "depart"=>"19 :00", "quantity"=>"1", "airport"=>"barcelona"}
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
    set_dates
    @booking.quantity = session[:booking_data]['quantity']
    @booking.experience = @experience
    @booking.user = current_user
    @booking.state = 'pending'
    authorize @booking
    if @booking.save
      session[:booking_data] = nil
      redirect_to new_booking_payment_path(@booking)
    else
      render "experiences/index"
    end
  end

  def show
      @qr = RQRCode::QRCode.new('https://github.com/whomwah/rqrcode', :size => 4, :level => :h)

    @booking = current_user.bookings.where(state: 'paid').find(params[:id])
    authorize @booking
    @airport = @booking.experience.airport
    @markers = [{
        lat: @airport.latitude,
        lng: @airport.longitude
      }]
  end

  private

  def set_dates
    if session[:booking_data]['transit_date'].present?
      start = session[:booking_data]['transit_date']
    else
      start = Date.today.strftime('%e-%m-%y')
    end
    @booking.start_datetime = start + " " + session[:booking_data]['arrive'].gsub(" ", "")
    @booking.end_datetime = start + " " +  session[:booking_data]['depart'].gsub(" ", "")
  end
  # def booking_strong_params
  #   params.require(:booking).permit(:start_datetime, :end_datetime, :quantity)
  # end
end
