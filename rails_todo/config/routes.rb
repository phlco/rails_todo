RailsTodo::Application.routes.draw do
  root :to => 'welcome#index'
  get '/todos' => 'todos#index'
  get '/todos/new' => 'todos#new'
  post '/todos' => 'todos#create'
  get '/todos/:id' => 'todos#show'
  get 'todos/:id/edit' => 'todos#edit'
  put 'todos/:id' => 'todos#update'
  delete 'todos/:id' => 'todos#destroy'
end
