Rails.application.routes.draw do
  root "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  get "/logout", to: "sessions#destroy"
  delete "/logout", to: "sessions#destroy"

  resources :posts do
    resources :comments, only: [ :create ]
  end
end
