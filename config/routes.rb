Rails.application.routes.draw do
  resources :reviews
  resources :companies
  resources :users
    post '/login', to: 'auth#login'
    post '/signup', to: 'users#create'
    get '/profile', to: 'users#profile'
    # get '/company/:id', to: 'companies#profile'
    get '/useraverage/:id', to: 'users#user_average'
    get 'ratings/:id', to: 'companies#ratings'
    get 'datetime/:id', to: 'users#datetime'
    

end
