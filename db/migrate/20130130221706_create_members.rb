class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :password
      t.string :realname
      t.integer :gender
      t.date :date_of_birth
      t.string :phone
      t.string :qq
      t.string :current_location
      t.string :resume_url

      t.timestamps
    end
  end
end
