class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :reviews, dependent: :destroy
  has_many :booking_extra_services
  has_many :extra_services, through: :booking_extra_services
  after_create :set_total_price
  monetize :amount_cents

  def set_total_price
    self.amount = experience.price * quantity
    save
  end

  def has_service(service)
    booking_extra_services.find_by(extra_service_id: service.id)
  end
end
