Rails.application.routes.draw do
  devise_for :users
  root "therapies#index"
  resources :users, only: [:edit, :update]
  resources :clients, only: [:new, :create, :edit, :update]
end
