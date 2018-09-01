Rails.application.routes.draw do
  get 'message/index'

  get 'message/create'

  root 'sessions#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #get    '/rooms',        to: 'rooms#index'
  #get    '/rooms/:id',    to: 'rooms#show'
  #post   '/rooms',        to: 'rooms#create'
  
  
  resources :rooms
  resources :messages
end
