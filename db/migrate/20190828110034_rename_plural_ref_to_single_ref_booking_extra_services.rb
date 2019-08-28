class RenamePluralRefToSingleRefBookingExtraServices < ActiveRecord::Migration[5.2]
  def change
    remove_column :booking_extra_services, :bookings_id
    remove_column :booking_extra_services, :attributes_id

    add_reference :booking_extra_services, :booking
    add_reference :booking_extra_services, :extra_service
  end
end
