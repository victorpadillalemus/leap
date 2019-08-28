class RenameAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_table :attributes, :extra_services
  end
end
