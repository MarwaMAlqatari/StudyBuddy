class CreateBuddies < ActiveRecord::Migration[5.2]
  def change
    create_table :buddies do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :gender
      t.string :class
      t.string :class_num
      t.string :section_num
      t.string :topic_1212
      t.text :comment

      t.timestamps
    end
  end
end
