Rails.application.routes.draw do

# static pages
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'

# Library
  get 'glibrary/login'
  get 'glibrary/index'

# Experiments

  get 'experiments/index'


  resources :fgapi_servers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
