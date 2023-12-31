Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index, :show]
  resources :articles
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
