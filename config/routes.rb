Rails.application.routes.draw do
  get 'library/index'
  #root 'library#index'
  
  get 'tests/new', to: 'tests#new'
  post 'tests', to: 'tests#create'
  root 'tests#new'

  # root "articles#index"
end
