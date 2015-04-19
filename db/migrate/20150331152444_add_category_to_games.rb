class AddCategoryToGames < ActiveRecord::Migration
  def change
    add_reference :games, :category, index: true
    add_foreign_key :games, :categories
  end
end
