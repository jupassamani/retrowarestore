# Create Games
class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :email, :encrypted_password, null: false, default: ''
      t.string :reset_password_token
      t.datetime :reset_password_sent_at, :remember_created_at
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at, :last_sign_in_at
      t.string :current_sign_in_ip, :last_sign_in_ip
      t.timestamps
    end
    add_index :users, :reset_password_token, :email, unique: true
  end
end
