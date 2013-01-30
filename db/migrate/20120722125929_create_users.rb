class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|

      t.text :description
      t.string :username
      t.string :email
      t.string :reset_password_token

      t.timestamps
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true

    add_index :users, :username,             :unique => true
  end
end
