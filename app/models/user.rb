class User < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
=======
     attr_accessor :firstname, :lastname
    
>>>>>>> MeryemKoken
=======
     attr_accessor :firstname, :lastname
    
>>>>>>> Thilina
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :trackable, :validatable,
<<<<<<< HEAD
<<<<<<< HEAD
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2] 
=======
=======
>>>>>>> Thilina
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  geocoded_by :ip
  after_validation :geocode
<<<<<<< HEAD
>>>>>>> MeryemKoken
=======
>>>>>>> Thilina
 
   def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.provider = auth.provider
       user.uid = auth.uid
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
<<<<<<< HEAD
<<<<<<< HEAD
=======
       user.firstname = auth.info.firstname
>>>>>>> MeryemKoken
=======
       user.firstname = auth.info.firstname
>>>>>>> Thilina
     end
  end
end