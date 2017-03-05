Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'

  resources :fgapi_servers
  resources :experiments
  resources :languages
  resources :glibraries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
