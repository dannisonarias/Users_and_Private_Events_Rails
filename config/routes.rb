Rails.application.routes.draw do
  root to: "events#index"
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:show,:new,:create,:index]
  resources :users , except: [:index]
end
