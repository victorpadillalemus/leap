class PaymentsController < ApplicationController
  before_action :set_booking

  def new
    @experience = @booking.experience
    authorize :payment
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email: params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer: customer.id, # You should store this customer id and re-use it.
      amount: @booking.total_price,
      description: "Payment for experience #{@booking.id}",
      currency: @booking.amount.currency
    )
    authorize :payment

    @booking.update(payment: charge.to_json, state: 'paid')
    redirect_to booking_path(@booking)
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_booking_payment_path(@order)
  end

  private

  def set_booking
    @booking = current_user.bookings.where(state: 'pending').find(params[:booking_id])
  end
end
