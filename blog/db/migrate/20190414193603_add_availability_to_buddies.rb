class AddAvailabilityToBuddies < ActiveRecord::Migration[5.2]
  def change
    add_column :buddies, :availability, :string
  end
end
