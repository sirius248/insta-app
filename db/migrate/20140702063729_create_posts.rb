class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :photo_uid
      t.string :photo_name

      t.timestamps
    end
  end
end
