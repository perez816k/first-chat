Rails.application.routes.draw do
  root 'sessions#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get    '/rooms',   to: 'rooms#show'
  post   '/rooms',   to: 'rooms#create'
  get    '/room',    to: 'room#show'
  


  resources :room
end
