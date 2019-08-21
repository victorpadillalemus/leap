Rails.application.routes.draw do
  resources :experiences do
    resources :bookings, only: [:new, :create]
    resources :favorites, only: [:new, :create]
  end
  devise_for :users

  resources :users, only: [:show]

  resources :favorites, only: [:index, :destroy]

  resources :bookings, only: [:index, :show, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end

  root to: 'pages#home'
  get '/filter', to: 'pages#filter', as: 'filter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



