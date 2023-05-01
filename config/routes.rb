Rails.application.routes.draw do
  get 'library/index'
  #root 'library#index'
  
  get 'tests/new', to: 'tests#new'
  post 'tests', to: 'tests#create'
  
  # root "articles#index"
end
