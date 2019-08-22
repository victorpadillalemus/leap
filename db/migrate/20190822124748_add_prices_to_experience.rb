class AddPricesToExperience < ActiveRecord::Migration[5.2]
  def change
    remove_column :experiences, :price
    add_monetize :experiences, :price
  end
end
