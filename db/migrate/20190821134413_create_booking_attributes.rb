class CreateBookingAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_attributes do |t|
      t.integer :quantity
      t.references :booking, foreign_key: true
      t.references :attribute, foreign_key: true

      t.timestamps
    end
  end
end
