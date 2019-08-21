Rails.application.routes.draw do

  resources :experiences do
    resources :bookings, only: [:new, :create]
    resources :favorites, only: [:new, :create]
  end
  devise_for :users
  resources :users, only: [:show]
  resources :bookings, only: [:index, :show, :destroy]
  resources :favorites, only: [:index, :destroy]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
