class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.string :title
      t.text :content
      t.text :notes
      t.integer :bounty

      t.timestamps
    end
    add_index :posts, :author_id
  end
end
