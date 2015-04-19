ActiveAdmin.register Game do
  permit_params :title, :release_year, :price, :description, :poster_url,
                :cat_id, :category_id
end
