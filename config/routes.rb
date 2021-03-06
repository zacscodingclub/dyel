Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :workouts, only: [:index, :show, :new, :create]
  resources :exercises
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
