Rails.application.routes.draw do
  root to: 'thoughts#index'

  resources :thoughts, only: [:index, :show] do
    resources :steps, only: :show
  end
end
