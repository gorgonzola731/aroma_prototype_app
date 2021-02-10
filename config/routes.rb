Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/show'
  devise_for :users
  root 'home#index'
  
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end

  resource :users, only: :show
  resources :aromas
end
