class CreateExperiencePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_photos do |t|
      t.string :photo
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
