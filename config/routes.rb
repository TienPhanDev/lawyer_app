Rails.application.routes.draw do
  resources :requests
  resources :users

  #landing page will be home AKA root_path
  root 'static_pages#home'

  #routes to static help/about/contact page
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  
end
