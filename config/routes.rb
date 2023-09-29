require "karafka/web"

Rails.application.routes.draw do
  resources :things
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount Karafka::Web::App, at: '/karafka'

  # Defines the root path route ("/")
  # root "articles#index"
  root "things#index"
end
