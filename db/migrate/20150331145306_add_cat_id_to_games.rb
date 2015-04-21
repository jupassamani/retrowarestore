# Add Cat Id
class AddCatIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :cat_id, :integer
  end
end
