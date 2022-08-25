Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :services, only: %i[index show new create] do
    resources :bookings, only: %i[new create edit update destroy]
  end

  get '/profile/:id', to: 'pages#profile', as: 'profile'

  # Defines the root path route ("/")
  # root "articles#index"
  patch "profile/:id/accept", to: "bookings#accept", as: "accept"
  patch "profile/:id/decline", to: "bookings#decline", as: "decline"
end
