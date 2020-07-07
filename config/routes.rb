Rails.application.routes.draw do
  get 'consult/show'
  get 'consult/new'
  get 'consult/create'
  get 'consult/edit'
  get 'consult/update'
  get 'consult/destroy'
  resources :requests
  resources :users

  #landing page will be home AKA root_path
  root 'static_pages#home'

  #routes to static help/about/contact page
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
  #Logins/Sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  
end
