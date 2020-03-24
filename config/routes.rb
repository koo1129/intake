Rails.application.routes.draw do
  devise_for :users

  root "therapies#index"
  resources :users, only: [:edit, :update]
end
