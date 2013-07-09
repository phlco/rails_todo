RailsTodo::Application.routes.draw do
  root :to => 'welcome#index'
  get '/todos' => 'todo#index'
  get '/todos/new' => 'todo#new'
  post '/todos' => 'todo#create'
  get '/todos/:id/edit' => 'todo#edit'
  put '/todos/:id/edit' => 'todo#update'
  get '/todos/:id' => 'todo#show'
  delete '/todos/:id' => 'todo#destroy'
end
