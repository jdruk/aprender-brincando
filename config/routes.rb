Rails.application.routes.draw do
  resources :contacts
  resources :functions
  resources :sessions
  resources :activities
  resources :studants
  devise_for :users
  
  # Controler home
  root 'home#index'
  get 'home/administrator', as: :administrator
  get 'home/normal_user'
end
