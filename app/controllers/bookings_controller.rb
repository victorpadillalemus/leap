class BookingsController < ApplicationController
  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new()
    @booking.start_datetime = session[:start_time]
    @booking.end_datetime = session[:end_time]
    @booking.quantity = session[:capacity]
    @booking.experience = @experience
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "experiences/index"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # private
  # def booking_strong_params
  #   params.require(:booking).permit(:start_datetime, :end_datetime, :quantity)
  # end
end
