Rails.application.routes.draw do
  #root 'library#index'
  
  #Rails es un framework que es convencion sobre configuracion,lo cual nos indica que
  #no debemos hacer muchas configuraciones.

  get 'tests/new', to: 'tests#new'
  get 'library/index'
  get 'tests/2', to: 'tests#show'
  post 'tests', to: 'tests#create'
  root 'tests#new'

  # root "articles#index"
end
