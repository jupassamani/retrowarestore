# Game
class Game < ActiveRecord::Base
  mount_uploader :poster_url, PosterUrlUploader
end
