Rails.application.routes.draw do
  get 'library/index'
  #root 'library#index'
  
  #Rails es un framework que es convencion sobre configuracion,lo cual nos indica que
  #no debemos hacer muchas configuraciones.

  get 'tests/new', to: 'tests#new'
  post 'tests', to: 'tests#create'
  root 'tests#new'

  # root "articles#index"
end
