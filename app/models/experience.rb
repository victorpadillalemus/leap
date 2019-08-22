class Experience < ApplicationRecord
  belongs_to :airport
  has_many :experience_photos
  monetize :price_cents
end
