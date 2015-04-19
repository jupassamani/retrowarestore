ActiveAdmin.register Contact do
  permit_params :content, :phone, :email, :lat, :lng
end
