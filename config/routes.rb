Rails.application.routes.draw do
  get 'library/index'
  get 'tests/new', to: 'tests#new'
  post 'tests', to: 'tests#create'

  root 'library#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
