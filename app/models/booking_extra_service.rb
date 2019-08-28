class BookingExtraService < ApplicationRecord
  belongs_to :extra_service
  belongs_to :booking

  after_create :update_booking_price
  after_destroy :update_booking_price

  private

  def update_booking_price
    total = booking.extra_services.pluck(:ppu).sum * 100
    booking.amount_cents = total + booking.experience.price_cents
    booking.save
  end
end
