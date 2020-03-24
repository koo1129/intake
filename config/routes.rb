Rails.application.routes.draw do
  devise_for :users
  get 'therapies/index'

  root "therapies#index"
end
