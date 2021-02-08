Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'home#index'
  resources :posts
  resource :users, only: :show
  resources :aromas
end
