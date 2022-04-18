Rails.application.routes.draw do
  get 'pages/splash'
  devise_for :users
  resources :users
  resources :categories do
    resources :operations
  end
  
  root "categories#index"
end
