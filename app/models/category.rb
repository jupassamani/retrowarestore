# Category
class Category < ActiveRecord::Base
  has_many :games
  mount_uploader :image, ImageUploader
  def name
    cat_name
  end
end
