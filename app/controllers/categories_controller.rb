class CategoriesController < InheritedResources::Base
  private

    def category_params
      params.require(:category).permit(:cat_name)
    end
end
