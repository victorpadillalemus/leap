class BookingExtraServicesController < ApplicationController
  before_action :set_booking, only: :create
  before_action :set_extra_service, only: :create
  before_action :set_booking_extra_service, only: :destroy

  def create
    @extra_service = BookingExtraService.create(booking: @booking, extra_service: @service)
    authorize :favorite, :create?
    redirect_to new_booking_payment_path(@booking)
  end

  def destroy
    @bes.destroy
    authorize :favorite, :create?
    redirect_to new_booking_payment_path(@bes.booking)
  end

  private

  def set_extra_service
    @service = ExtraService.find(params[:extra_service_id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_booking_extra_service
    @bes = BookingExtraService.find(params[:id])
  end
end
