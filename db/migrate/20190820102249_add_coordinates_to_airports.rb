class AddCoordinatesToAirports < ActiveRecord::Migration[5.2]
  def change
    add_column :airports, :latitude, :float
    add_column :airports, :longitude, :float
  end
end
