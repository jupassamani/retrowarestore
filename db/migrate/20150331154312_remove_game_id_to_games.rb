class RemoveGameIdToGames < ActiveRecord::Migration
  def change
    remove_column :games, :game_id, :integer
  end
end
