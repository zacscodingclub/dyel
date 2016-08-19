Rails.application.routes.draw do
  devise_for :users
  resources :workouts, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
