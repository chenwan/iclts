class ChangeIntegerToString < ActiveRecord::Migration
  def up
	change_column :members, :gender, :string
  end

  def down
  end
end
