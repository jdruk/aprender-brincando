Rails.application.routes.draw do
  resources :students
  resources :session_students
  resources :contacts
  resources :functions
  resources :activities
  devise_for :users
  
  # Controler home
  root 'home#index'
  get 'home/administrator', as: :administrator
  get 'home/normal_user'
end
