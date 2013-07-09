ToDo::Application.routes.draw do


#      root
GET    '/' => 'welcome#index'
#     todos
GET    '/todos' => 'todos#index'

POST   '/todos' => 'todos#create'
#  new_todo
GET    '/todos/new' => 'todos#new'
# edit_todo
GET    '/todos/:id/edit' => 'todos#edit'
#      todo
GET    '/todos/:id' => 'todos#show'

PUT    '/todos/:id' => 'todos#update'

DELETE '/todos/:id' => 'todos#destroy'

end


  # get '/dogs' => 'dogs#index'
  # get '/dogs/new' => 'dogs#new'
  # post '/dogs' => 'dogs#create'
  # get '/dogs/:id' => 'dogs#show'
  # get '/dogs/:id/edit' => 'dogs#edit'
  # put '/dogs/:id' => 'dogs#update'
  # delete '/dogs/:id' => 'dogs#destroy'