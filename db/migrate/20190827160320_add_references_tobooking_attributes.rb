class AddReferencesTobookingAttributes < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_attributes, :attribute
    add_reference :booking_attributes, :booking
  end
end
