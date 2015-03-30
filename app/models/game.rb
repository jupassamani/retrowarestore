class Game < ActiveRecord::Base
  
  mount_uploader :poster_url, PosterUrlUploader # Tells rails to use this uploader for this model.

end
