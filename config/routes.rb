Rails.application.routes.draw do
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  resources :cars
  root 'home#index'

<<<<<<< HEAD
<<<<<<< HEAD
   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
=======
   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
>>>>>>> MeryemKoken
=======
   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
>>>>>>> Thilina
=======
=======
>>>>>>> Connor
=======
>>>>>>> chris
>>>>>>> fbfddd8a571c58d4ee3d7636d49d397bdc26d1dc
  resources :bookings
  resources :cars
  root 'home#index'

   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> mehmed
=======
>>>>>>> Connor
=======
>>>>>>> chris
>>>>>>> fbfddd8a571c58d4ee3d7636d49d397bdc26d1dc
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
