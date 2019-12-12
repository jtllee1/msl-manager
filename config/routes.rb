Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard'
  resources :astromons, only: [:new, :create]
  resources :msl_gems, only: [:new, :create]
end
