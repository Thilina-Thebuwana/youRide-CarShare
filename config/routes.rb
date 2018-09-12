Rails.application.routes.draw do
  resources :bookings
  resources :cars
  root 'cars#index'

   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
