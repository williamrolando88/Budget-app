Rails.application.routes.draw do
  get 'pages/splash'
  devise_for :users
  resources :users
  resources :categories do
    resources :operations
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#splash"
end
