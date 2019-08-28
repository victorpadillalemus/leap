class RenameBookingAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_table :booking_attributes, :booking_extra_services
  end
end
