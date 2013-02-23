class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.datetime :last_logged_in_at

      t.timestamps
    end
  end
end
