Rails.application.routes.draw do

 root "welcome#about"
  
  get '/signup', to: "registrations#new"
  post '/signup', to: "registrations#create"

  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create" 
  delete '/logout', to: "sessions#destroy"

  get 'users/:id', to: "users#show", as: "profile"

  mount ActionCable.server => '/cable'

  resources :chatrooms, param: :slug
  resources :messages
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
