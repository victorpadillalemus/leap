class Experience < ApplicationRecord
  belongs_to :airport
  has_many :experience_photos
end
