Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts do
    resources :comments
  end
  resources :users
  resources :sessions
  root 'posts#index'
end