<<<<<<< HEAD
Rails.application.routes.draw do
  resources :bookings
  resources :cars
  root 'home#index'

   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=======
Rails.application.routes.draw do
 

  get 'users/index' => 'users#index', :as => 'allusers'


  resources :bookings
  resources :cars
<<<<<<< HEAD
=======
  resources :admins
>>>>>>> chris
  root 'cars#index'

   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
>>>>>>> Thilina
