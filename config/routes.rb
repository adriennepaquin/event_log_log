Rails.application.routes.draw do

  get "/logs", to: "logs#index"
  post "/logs", to: "logs#create"
  delete "/logs/:id", to: "logs#destroy"
  get "/users", to: "users#index"
  get "/comments/:id", to: "comments#show"
  post "/comments", to: "comments#create"
  patch "/comments/:id", to: "comments#update"
  delete "/comments/:id", to: "comments#destroy"
  
end
