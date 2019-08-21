class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :total_price
      t.boolean :status
      t.references :user, foreign_key: true
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
