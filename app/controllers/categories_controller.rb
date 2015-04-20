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
    end
end
