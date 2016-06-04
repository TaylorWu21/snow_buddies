Rails.application.routes.draw do

  root 'trips#index'

  devise_for :users, controllers: {
   registrations: 'users/registrations'
 }
  resources :trips
  resources :users

end
