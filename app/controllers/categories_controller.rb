# Categories Controller
class CategoriesController < ApplicationController
  def index
    @games = Game.all
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:cat_name)
  end

  def show
    @category = Category.find(params[:id])
    @games = Game.where(category_id: @category.id)
    @categories = Category.all
  end

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      'Remove from'
    else
      'Add to'
    end
  end
end
