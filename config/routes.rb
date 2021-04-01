Rails.application.routes.draw do
  resources :favorites
  resources :memes
  resources :users
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  post "/generate", to: "memes#generate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
