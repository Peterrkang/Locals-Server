Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'signin', to: 'authentication#authenticate'
  post 'signup', to: 'users#new'
  get 'events', to: 'events#index'
  post 'events', to: 'events#new'
  get 'events/:id', to: 'events#show'
  get 'events/:id/chatroom', to: 'chatroom#show'
  post 'events/:id/chatroom', to: 'chatroom#message'

  root 'events#index'
end
