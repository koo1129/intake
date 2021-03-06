Rails.application.routes.draw do
  get 'results/example'
  devise_for :users
  root "therapies#index"
  resources :users, only: [:edit, :update]
  resources :clients, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :therapies, only: [:index, :new, :create]
  end
end
