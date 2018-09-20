Rails.application.routes.draw do

  root 'pages#home'
  resources :users
  resources :disasters
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'
  get 'users/edit'
  get '/profile' => 'users#show'
  get 'users/index'

  get '/auth/:provider/callback', to: 'sessions#facebook'
  get '/success' => 'pages#success'
  get '/about' => 'pages#about'
  get '/privacy' => 'pages#privacy'

  get '/learn' => 'pages#education'
  get '/ndisaster' => 'disasters#index'
  get '/region' => 'pages#involve'


  get 'disasters/edit'
  get 'all' => 'disasters#index'
  get 'disasters/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
