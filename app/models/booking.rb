class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  after_create :set_total_price

  def set_total_price
    self.set_total_price = self.experience.price * self.quantity
    self.save
  end
end
