Rails.application.routes.draw do
  root 'sessions#new'
  resources :games, only: [:show, :index, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :users, only: [:show, :new, :create, :delete]
  resources :reviews, only: [:new, :create]
  post 'destroy', to: 'sessions#destroy'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'
  get '/top5games' => 'games#topfive'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
