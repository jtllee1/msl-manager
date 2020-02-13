Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/guest', to: 'pages#guest'
  resources :species, only: [:index]
  resources :astromons, only: [:index, :new, :create, :destroy] do
    resources :first_gems, only: [:new, :create, :destroy]
    resources :second_gems, only: [:new, :create, :destroy]
    resources :third_gems, only: [:new, :create, :destroy]
    resources :first_trinkets, only: [:new, :create, :destroy]
    resources :second_trinkets, only: [:new, :create, :destroy]
    resources :third_trinkets, only: [:new, :create, :destroy]
  end
  resources :msl_gems, only: [:index, :new, :create, :destroy]
  resources :trinkets, only: [:index]
  resources :trinket_ones, only: [:new, :create, :destroy]
  resources :trinket_twos, only: [:new, :create, :destroy]
  resources :trinket_threes, only: [:new, :create, :destroy]
end
