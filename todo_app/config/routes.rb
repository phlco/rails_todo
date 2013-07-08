TodoApp::Application.routes.draw do
  root :to => 'welcome#index'
  get '/todos' => 'todos#index'
  post '/todos' => 'todos#create'
  get '/todos/new' => 'todos#new'
  get '/todos/:id' => 'todos#show'
end
