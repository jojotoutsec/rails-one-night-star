Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :services, only: [:index, :show]
  resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
