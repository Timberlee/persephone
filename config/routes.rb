Rails.application.routes.draw do

  root 'pages#home'
  resources :users
  resources :disasters
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'

  get '/profile' => 'users#show'

  get '/auth/:provider/callback', to: 'sessions#facebook'
  get '/success' => 'pages#success'
  get '/about' => 'pages#about'
  get '/privacy' => 'pages#privacy'

  get '/learn' => 'pages#education'
  get '/ndisaster' => 'disasters#index'
  get '/region' => 'pages#involve'
  get '/sources' => 'pages#sources'


  get 'all' => 'disasters#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
