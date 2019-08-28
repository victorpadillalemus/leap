class BookingExtraService < ApplicationRecord
  belongs_to :extra_service
  belongs_to :booking
end
