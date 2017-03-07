Rails.application.routes.draw do

  resources :experiments
# static pages
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'

# Library
  get 'glibrary/login'
  get 'glibrary/index'

# Experiments

  get 'experiments/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
