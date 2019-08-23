class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :reviews, dependent: :destroy
  after_create :set_total_price
  monetize :amount_cents

  def set_total_price
    self.total_price = self.experience.price * self.quantity
    self.save
  end
end
