class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :parent
      t.references :user
      t.text :body

      t.timestamps
    end
    add_index :posts, :parent_id
    add_index :posts, :user_id
  end
end
