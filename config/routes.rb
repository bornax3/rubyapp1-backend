Rails.application.routes.draw do
  resources :notes
  resource :users, only: [:create]
  # users is a controller and login is a method in the users controller 
  post '/login', to: 'users#login'
  get '/auto_login', to: 'users#auto_login'
end
