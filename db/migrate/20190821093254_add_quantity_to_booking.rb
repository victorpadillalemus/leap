class AddQuantityToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :quantity, :integer
  end
end
