Rails.application.routes.draw do
  resources :contacts

  resource :cart, only: [:show] do
    post 'add/:game_id', to: 'carts#add', as: :add_to
    get 'remove/:game_id', to: 'carts#remove', as: :remove_from
    post 'remove/:game_id', to: 'carts#remove', as: :_remove_from
  end

  resources :abouts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :games
  root to: 'games#index'
  get 'categories/:id' => 'categories#show', as: 'category'
  get 'search' => 'search#result', as: 'search_result'
end
