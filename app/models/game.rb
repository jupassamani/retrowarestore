# Game
class Game < ActiveRecord::Base
  mount_uploader :poster_url, PosterUrlUploader
  belongs_to :category
end
