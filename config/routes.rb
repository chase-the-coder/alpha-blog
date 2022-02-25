Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "about", to: "pages#about"
  # get "articles", to: "articles#index"
  # post "articles", to: "articles#create"
  # get "articles/new", to: "articles#new"
  # get "articles/:id", to: "articles#show"
  resources :articles
 

  # Defines the root path route ("/")
  # root "articles#index"
end
