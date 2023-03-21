Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :todos, only: [:get_todos, :create, :update, :delete]

  get '/', to: 'todos#get_todos'

  post '/create', to: 'todos#create'

  put '/update/:id', to: 'todos#update'

  delete '/destroy/:id', to: 'todos#destroy'


end