Rails.application.routes.draw do
  # resources :comments
  # resources :logs
  # resources :users

  get "/logs", to: "logs#index"
  post "/logs", to: "logs#create"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
