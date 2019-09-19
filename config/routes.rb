Rails.application.routes.draw do
  resources :reviews
  resources :companies
  resources :users
    post '/login', to: 'auth#login'
    post '/signup', to: 'users#create'
    get '/profile', to: 'users#profile'
end
