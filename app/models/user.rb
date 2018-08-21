class User < ApplicationRecord
<<<<<<< HEAD
    has_many :bookings
    
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
     attr_accessor :firstname, :lastname
    
>>>>>>> MeryemKoken
=======
     attr_accessor :firstname, :lastname
    
>>>>>>> Thilina
=======
    has_many :bookings
    
>>>>>>> mehmed
=======
    has_many :bookings
    
>>>>>>> Connor
=======
    has_many :bookings
    
>>>>>>> chris
>>>>>>> fbfddd8a571c58d4ee3d7636d49d397bdc26d1dc
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :trackable, :validatable,
<<<<<<< HEAD
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
 
=======
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  
>>>>>>> mehmed
=======
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  
>>>>>>> Connor
=======
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  
>>>>>>> chris
>>>>>>> fbfddd8a571c58d4ee3d7636d49d397bdc26d1dc
   def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.provider = auth.provider
       user.uid = auth.uid
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
<<<<<<< HEAD
       user.firstname = auth.info.firstname
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
       user.firstname = auth.info.firstname
>>>>>>> MeryemKoken
=======
       user.firstname = auth.info.firstname
>>>>>>> Thilina
=======
       user.firstname = auth.info.firstname
>>>>>>> mehmed
=======
       user.firstname = auth.info.firstname
>>>>>>> Connor
=======
       user.firstname = auth.info.firstname
>>>>>>> chris
>>>>>>> fbfddd8a571c58d4ee3d7636d49d397bdc26d1dc
     end
  end
end