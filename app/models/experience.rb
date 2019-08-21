class Experience < ApplicationRecord
  belongs_to :airport
  has_many :experience_photos
  has_many :favorites
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
