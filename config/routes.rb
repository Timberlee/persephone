Rails.application.routes.draw do
  root 'pages#home'
  resources :users
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  get '/learn' => 'pages#education'
  get '/info' => 'pages#info'
  get '/change' => 'pages#involve'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
