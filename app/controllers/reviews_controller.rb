class ReviewsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(booking: @booking)
    authorize @review
  end

  def create
    @review = Review.new(review_strong_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def review_strong_params
    params.require(:review).permit(:content, :rating)
  end
end
