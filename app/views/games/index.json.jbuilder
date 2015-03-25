json.array!(@games) do |game|
  json.extract! game, :id, :title, :release_year, :price, :description, :game_id, :poster_url
  json.url game_url(game, format: :json)
end
