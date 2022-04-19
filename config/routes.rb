Rails.application.routes.draw do
  get 'pages/splash'
  devise_for :users
  devise_for :users, skip: :all
  resources :categories do
    resources :operations, only: [:new, :create, :destroy]
  end
  
  root to: "categories#index"
end
