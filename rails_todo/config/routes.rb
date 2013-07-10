RailsTodo::Application.routes.draw do
   root :to => 'welcome#index'

  resources :tasks do
  end

  resources :contacts do
  end

  resources :tasks_contacts do
  end

end