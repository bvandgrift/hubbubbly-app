Hubbubbly::Application.routes.draw do

  # omniauth homina homina
  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/signout", to: "sessions#destroy", :as => "signout"
  match "/signin", to: "sessions#new", :as => "signin"

  resources :identities

  root :to => "front#index"
end
