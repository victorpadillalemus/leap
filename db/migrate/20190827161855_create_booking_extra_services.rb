class CreateBookingExtraServices < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_extra_services do |t|
      t.integer :quantity
      t.references :booking
      t.references :extra_service
      #
      t.timestamps
    end
  end
end
