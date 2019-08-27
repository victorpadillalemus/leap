class AddReferencesTobookingAttributes < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_attributes, :attributes
    add_reference :booking_attributes, :bookings
  end
end
