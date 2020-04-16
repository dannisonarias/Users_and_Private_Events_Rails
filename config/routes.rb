Rails.application.routes.draw do
  root to: "events#show"
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:show,:new,:create]
  resources :users , except: [:index]
end
