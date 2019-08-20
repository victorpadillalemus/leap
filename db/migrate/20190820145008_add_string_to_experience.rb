class AddStringToExperience < ActiveRecord::Migration[5.2]
  def change
    change_column :experiences, :start_time, :datetime
    change_column :experiences, :end_time, :datetime
  end
end
