Todos::Application.routes.draw do


  root :to => 'welcome#index'

  ###Tasks###
  get '/todos' => 'todos#index'
  get '/todos/new' => 'todos#new'
  get '/todos/:id' => 'todos#show'
  post '/todos' => 'todos#create'
  get '/todos/:id/edit' => 'todos#edit'
  put '/todos/:id' => 'todos#update'
  delete '/todos/:id' => 'todos#destroy'

  ###Contacts###
  get '/contacts' => 'contacts#index'
  get '/contacts/new' => 'contacts#new'
  get '/contacts/:id' => 'contacts#show'
  post '/contacts' => 'contacts#create'
  get '/contacts/:id/edit' => 'contacts#edit'
  put '/contacts/:id' => 'contacts#update'
  delete '/contacts/:id' => 'contacts#destroy'
end

