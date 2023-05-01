Rails.application.routes.draw do
  get 'library/index'
  root 'library#index'
  
  get 'test/new', to: 'test#new'
  post 'test', to: 'test#create'
  
  # root "articles#index"
end
