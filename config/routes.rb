Rails.application.routes.draw do
  get 'diagnoses/index'
  get 'comments/create'
  get 'comments/destroy'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/show'
  devise_for :users
  root 'home#index'

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  resource :users, only: :show
  resources :aromas
end
