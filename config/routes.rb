Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Afficher toutes les tasks sur le controller tasks
  get '/tasks', to: 'tasks#index'

  # Creation d'une route pour display Task form sur le controller tasks
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # Création d'une route pour le post
  post '/tasks', to: 'tasks#create'

  # Afficher le detail d'une task sur le controller tasks
  get '/tasks/:id', to: 'tasks#show', as: :task

  #edit a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  #patch
  patch '/tasks/:id', to: 'tasks#update'

  #delete (remove)
  delete 'tasks/:id', to: 'tasks#destroy'
end
