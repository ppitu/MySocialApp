Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'users/new'
  get 'users/login', to: 'sessions#new'
  post 'users/login', to: 'sessions#create'
  get 'users/welcome', to: 'sessons#welcome'
 
  root "sessions#welcome"

  resources :posts
end
