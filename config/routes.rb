Rails.application.routes.draw do

  resources :experiences do
    resources :favorites, only:[:index, :create, :destroy]
  end
  devise_for :users
  resources :users, only:[:show]

  root to: 'pages#home'
  get '/filter', to: 'pages#filter', as: 'filter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



