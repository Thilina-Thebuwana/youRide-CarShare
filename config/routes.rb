Rails.application.routes.draw do
  root 'home#index'

<<<<<<< HEAD
   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
=======
   devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" ,  registrations: 'reigistrations'}
   
>>>>>>> MeryemKoken
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
