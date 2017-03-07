Rails.application.routes.draw do

  get 'glibrary/check_status'
  get 'glibrary/login'
  get 'glibrary/get_token'
  get 'glibrary/index'

  root 'pages#home'
  get 'pages/home'
  get 'pages/about'

  resources :fgapi_servers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
