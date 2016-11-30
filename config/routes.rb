Rails.application.routes.draw do
  get 'games/labirinto', as: :labirinto

  get 'games/silabas'

  get 'games/vogais'

  get 'games/alfabeto'

  resources :students
  resources :session_students
  resources :contacts
  resources :functions
  resources :activities
  devise_for :users
  
  # Controler home
  root 'home#index'
  get 'home/administrator', as: :administrator
  get 'home/normal_user', as: :normal_user

end
