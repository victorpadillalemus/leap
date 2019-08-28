class RenameAttribute < ActiveRecord::Migration[5.2]
  def change
    rename_table :attribute, :extra_service
  end
end
