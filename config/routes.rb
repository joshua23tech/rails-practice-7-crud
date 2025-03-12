Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "/nbaplayers", to: "nbaplayers#index"

  get "/nbaplayers/new", to: "nbaplayers#new"
  post "/nbaplayers", to: "nbaplayers#create"
  
  get "/nbaplayers/:id", to: "nbaplayers#show", as: :nbaplayer

  get "/nbaplayers/:id/edit", to: "nbaplayers#edit"
  patch "/nbaplayers/:id", to: "nbaplayers#update"
  
  delete "/nbaplayers/:id", to: "nbaplayers#destroy"
end
