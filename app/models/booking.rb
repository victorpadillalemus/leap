class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :reviews, dependent: :destroy
  after_create :set_total_price

  def set_total_price
    self.set_total_price = self.experience.price * self.quantity
    self.save
  end
end
