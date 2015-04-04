class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :content
      t.string :image

      t.timestamps null: false
    end
  end
end
