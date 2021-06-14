Rails.application.routes.draw do
	get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
  
	root 'dashboard#show'
end
