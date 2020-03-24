Rails.application.routes.draw do
  get 'therapies/index'

  root "therapies#index"
end
