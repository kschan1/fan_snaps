Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  resources :posts

  post '/api/likes', to: 'api/likes#create'

  get '/api/comments', to: 'api/comments#index'
  post '/api/comments', to: 'api/comments#create'

end
