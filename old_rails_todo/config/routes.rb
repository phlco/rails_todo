RailsTodo::Application.routes.draw do
   root :to => 'welcome#index'
  # get '/dogs/search' => 'dogs#search'
  resources :tasks do
    collection do
      get 'search'
    end
    member do
      get 'vaccinations'
    end
  end
end