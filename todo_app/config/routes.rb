TodoApp::Application.routes.draw do
root :to => 'welcome#index'
get '/tasks' => 'tasks#index'
end
