Rails.application.routes.draw do
  root 'pages#home'

  get '/login', to: 'pages#login'

  get '/search', to: 'pages#search'

  get '/profile', to: 'pages#profile'

  get '/result', to: 'pages#result'

  get '/create', to: 'pages#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
