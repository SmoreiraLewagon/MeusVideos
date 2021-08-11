Rails.application.routes.draw do
  root to: 'videos#index'
  resources :videos do
    resources :tags, only: [:create]
    resources :comments
  end
  resources :tags, only: [:index]
end
