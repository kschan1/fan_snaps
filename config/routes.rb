Rails.application.routes.draw do
  root 'posts#index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'

  resources :posts

  post '/comments', to: 'comments#create'

  post '/api/likes', to: 'api/likes#create'

  get '/api/comments', to: 'api/comments#index'
  post '/api/comments', to: 'api/comments#create'

end
