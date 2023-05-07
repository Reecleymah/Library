Rails.application.routes.draw do
  #root 'library#index'
  
  #Rails es un framework que es convencion sobre configuracion,lo cual nos indica que
  #no debemos hacer muchas configuraciones.

  get 'books/index', to: 'books#index'
  get 'books/:id', to: 'books#show'
  get 'books/new', to: 'books#new'
  post 'books', to: 'books#create'

  get 'tests/new', to: 'tests#new'
  get 'tests/:id', to: 'tests#show' #:id - Esto es un comodin, los comodines se define con ':' y un parametro en este caso 'id'
  get 'tests/:id/edit', to: 'tests#edit'
  
  patch 'tests/:id', to: 'tests#update', as: :test
  
  #La parte del codigo as: :test es definir el nombre de la ruta, esto es por que si no
  #definimos esta ruta se nos mostrará un error indicandonos que el siguiente metodo no esta definido
  #"test_path". Aqui el _path intenta siembre obtener la ruta osea /test/id y test es el nombre. 

  delete 'tests/:id', to: 'tests#destroy'
  post 'tests', to: 'tests#create'

  root to: 'books#new'

  # root "articles#index"
end
