class Experience < ApplicationRecord
  belongs_to :airport
  belongs_to :user
  has_many :experience_photos
end
