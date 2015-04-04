# Category
class Category < ActiveRecord::Base
  has_many :games
  
  def name
    cat_name
  end
end
