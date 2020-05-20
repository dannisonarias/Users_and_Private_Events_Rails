Rails.application.routes.draw do
  get 'registrations/create'
  get 'registration/create'
  root to: "events#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:show,:new,:create,:index]
  resources :registrations, only: [:create]
  resources :users 
end
