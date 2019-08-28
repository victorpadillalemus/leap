class RenameBookingAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_table :booking_attribute, :booking_extra_service
  end
end
