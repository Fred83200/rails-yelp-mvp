Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # # Read all
  # get "restaurants", to: "restaurants#index"
  # # Read one
  # get "restaurants/:id", to: "restaurant#show"
  # #create a new one
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # #Update
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"
  # # Delete
  # delete "restaurants/:id", to: "restaurants#destroy"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
