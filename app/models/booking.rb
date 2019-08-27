class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :reviews, dependent: :destroy
  has_many :booking_attributes
  has_many :attributes, through: :booking_attributes
  after_create :set_total_price
  monetize :amount_cents

  def set_total_price
    self.amount = experience.price * quantity
    save
  end
end
