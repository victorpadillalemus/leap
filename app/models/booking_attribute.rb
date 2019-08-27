class BookingAttribute < ApplicationRecord
  belongs_to :attribute
  belongs_to :booking
end
