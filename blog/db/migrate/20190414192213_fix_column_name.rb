class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :buddies, :class, :class_name
  end
end
