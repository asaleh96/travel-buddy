Rails.application.routes.draw do

  # Pages
  root to: "pages#home"

  # Users
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
