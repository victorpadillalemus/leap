class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    # {"transit_date"=>"", "arrival"=>"10", "arrive"=>"12 :30", "departure"=>"23", "depart"=>"19 :00", "quantity"=>"1", "airport"=>"barcelona"}
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new()
    @booking.start_datetime = session[:booking_data]['arrival']
    @booking.end_datetime = session[:booking_data]['departure']
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
  end

  # private
  # def booking_strong_params
  #   params.require(:booking).permit(:start_datetime, :end_datetime, :quantity)
  # end
end
