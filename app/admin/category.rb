ActiveAdmin.register Category do
  permit_params :cat_name, :image, :description
end
