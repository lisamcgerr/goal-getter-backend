Rails.application.routes.draw do
  resources :goals
  resources :users

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/home', to: 'auth#show'
  
end
