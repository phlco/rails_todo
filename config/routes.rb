RailsTodo::Application.routes.draw do
 root :to => 'welcome#index'
 get '/tasks' => 'tasks#index' #List of tasks
 get '/tasks/new' => 'tasks#new' #New task
 post '/tasks' => 'tasks#create'
 get '/tasks/:id' => 'tasks#show' #Detailed list
 get '/tasks/:id/edit' => 'tasks#edit'
 put '/tasks/:id' => 'tasks#update'
 delete '/tasks/:id' => 'tasks#destroy'
end
