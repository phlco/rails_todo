Todos::Application.routes.draw do
  get '/' => 'welcome#index'
  get '/new' => 'welcome#new'
  get '/:id' => 'welcome#show'
  post '/' => 'welcome#create'
  get '/:id/edit' => 'welcome#edit'
  put '/:id' => 'welcome#update'
end
