Rails.application.routes.draw do
  root to: 'videos#index'
  resources :videos do
    resources :tags, only: [:create, :new, :destroy]
    resources :comments
  end
  resources :tags
end
