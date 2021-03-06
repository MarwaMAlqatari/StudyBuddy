class CreateBuddies < ActiveRecord::Migration[5.2]
  def change
    create_table :buddies do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :gender
      t.string :class_name
      t.string :class_num
      t.string :section_num
      t.string :topic_1212
      t.string :availability
      t.string :time
      t.text :comment

      t.timestamps
    end
  end
end
