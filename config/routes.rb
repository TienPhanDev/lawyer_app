Rails.application.routes.draw do
  namespace :intake do
    resources :user_profiles, only: [:new, :create]
    resources :user_accounts, only: [:new, :create]
  end

  resources :requests
  resources :users
  resources :consults

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
