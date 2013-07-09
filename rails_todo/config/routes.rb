RailsTodo::Application.routes.draw do
  root :to => 'todos#index'
  get '/todos/new' => 'todos#new'
  post '/todos' => 'todos#create'
  get '/todos' => 'todos#index'
  get '/todos/:id' => 'todos#show'
  get '/todos/:id/edit' => 'todos#edit'
  put '/todos/:id' => 'todos#update'
  delete '/todos/:id' => 'todos#delete'
end
