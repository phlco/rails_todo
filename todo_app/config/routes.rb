TodoApp::Application.routes.draw do
root :to => 'welcome#index'
get '/todos' => 'todos#index'
end
