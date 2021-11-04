Rails.application.routes.draw do
  # resources :comments
  # resources :logs
  # resources :users

  get "/logs", to: "logs#index"
  post "/logs", to: "logs#create"
  get "/users", to: "users#index"
  get "/comments/:id", to: "comments#show"
  
end
