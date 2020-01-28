Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'pages#dashboard'
  get '/guest', to: 'pages#guest'
  resources :astromons, only: [:index, :new, :create, :destroy] do
    resources :first_gems, only: [:new, :create, :destroy]
    resources :second_gems, only: [:new, :create, :destroy]
    resources :third_gems, only: [:new, :create, :destroy]
  end
  resources :msl_gems, only: [:index, :new, :create, :destroy]
  resources :species, only: [:index]
end
