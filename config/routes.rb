Rails.application.routes.draw do

  get 'users/new'

  get 'users/create'

  get 'users/show'

  root to: "site#index"


  resources :posts

end
