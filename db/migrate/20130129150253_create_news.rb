class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :image_url_1
      t.string :image_url_2

      t.timestamps
    end
  end
end
