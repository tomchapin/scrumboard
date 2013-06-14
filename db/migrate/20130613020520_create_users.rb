class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.date :post_date
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
