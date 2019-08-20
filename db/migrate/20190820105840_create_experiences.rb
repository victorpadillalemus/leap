class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.text :description
      t.integer :capacity
      t.integer :price
      t.string :category
      t.string :title
      t.integer :duration
      t.string :meeting_point
      t.time :start_time
      t.time :end_time
      t.references :airport, foreign_key: true

      t.timestamps
    end
  end
end
