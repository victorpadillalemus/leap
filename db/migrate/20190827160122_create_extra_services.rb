class CreateExtraServices < ActiveRecord::Migration[5.2]
  def change
    create_table :extra_services do |t|
      t.string :name
      t.integer :ppu

      t.timestamps
    end
  end
end
