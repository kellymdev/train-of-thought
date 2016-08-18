Rails.application.routes.draw do
  root to: 'thoughts#index'

  resources :thoughts, only: :index
end
