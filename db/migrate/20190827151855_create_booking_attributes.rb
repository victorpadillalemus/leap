class CreateBookingAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_attributes do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
