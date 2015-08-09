Rails.application.routes.draw do

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # get 'users/new'

  # get 'users/create'

  # get 'users/show'

  root to: "site#index"
  
  get "/profile", to: "users#show", as: :profile
  get "/signup", to: "users#new"
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  post '/users', to: 'users#create'


  resources :posts
  resources :users  

end
