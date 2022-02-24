Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "about", to: "pages#about"
  get "article/:id", to: "articles#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
