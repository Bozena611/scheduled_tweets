Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # get "/", to: "main#index" BUT BELOW MORE COMMON

  root to: "main#index"

  # GET /about
  get "/about", to: "about#index"

end
