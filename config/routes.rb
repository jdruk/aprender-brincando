Rails.application.routes.draw do
  resources :contacts
  resources :functions
  resources :sessions
  resources :activities
  resources :studants
  devise_for :users
  root 'home#index'

  get 'home/about'
end
