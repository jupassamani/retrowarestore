class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :content
      t.integer :phone
      t.string :email
      t.integer :lat
      t.integer :lng

      t.timestamps null: false
    end
  end
end
