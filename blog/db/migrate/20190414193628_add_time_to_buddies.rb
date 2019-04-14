class AddTimeToBuddies < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :time, :string
  end
end
