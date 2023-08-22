Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get all
  get 'tasks' => 'tasks#index'

  # create
  get 'tasks/new' => 'tasks#new', as: :new_task
  post 'tasks' => 'tasks#create'

  # update
  get 'tasks/:id/edit' => 'tasks#edit', as: :edit_task
  patch 'tasks/:id' => 'tasks#update'

  # delete
  delete 'tasks/:id' => 'tasks#destroy'

  # read one
  get 'tasks/:id' => 'tasks#show', as: :task
end
