Rails.application.routes.draw do

  get "actions", to: "actions#index"
  get "hello", to: "hello#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
