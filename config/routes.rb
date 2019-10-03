Rails.application.routes.draw do
  resources :images
  resources :userimages
  resources :reviews
  resources :companies
  resources :users
    post '/login', to: 'auth#login'
    post '/signup', to: 'users#create'
    get '/profile', to: 'users#profile'
    patch '/profile', to:"users#update"
    # get '/company/:id', to: 'companies#profile'
    get '/useraverage/:id', to: 'users#user_average'
    get 'ratings/:id', to: 'companies#ratings'
    get 'datetime/:id', to: 'users#datetime'
    # get 'images', to: 'userimages#index'
    
    

end
