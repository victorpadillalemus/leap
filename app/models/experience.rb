class Experience < ApplicationRecord
  belongs_to :airport
  has_many :experience_photos
  monetize :price_cents
  has_many :favorites
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
