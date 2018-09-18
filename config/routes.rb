Rails.application.routes.draw do
 

  resources :credit_cards
  get 'users/index' => 'users#index', :as => 'allusers'


  resources :bookings
  resources :cars
  resources :admins
  root 'cars#index'
  resources :charges
    
   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
  mount StripeEvent::Engine, at: '/payments'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
