Rails.application.routes.draw do
  resources :favorites
  resources :memes
  resources :users
  
  post "/generate", to: "memes#generate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
