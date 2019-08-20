Rails.application.routes.draw do

  resources :experiences do
    resources :favorites, only:[:create]
  end
  devise_for :users
  resources :users, only:[:show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
