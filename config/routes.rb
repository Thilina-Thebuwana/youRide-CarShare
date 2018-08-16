Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
