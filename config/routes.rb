Rails.application.routes.draw do
  resources :abouts

  resources :categories

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :games
  root to: 'games#index'
end
