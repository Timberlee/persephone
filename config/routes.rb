Rails.application.routes.draw do

  root 'pages#home'
  resources :users
  resources :disasters
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/register' => 'users#new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  get '/learn' => 'pages#education'
  get '/info' => 'disasters#index'
  get '/change' => 'pages#involve'

  get '/disaster' => 'disasters#new'
  get 'disasters/edit'
  get 'all' => 'disasters#index'
  get 'disasters/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
