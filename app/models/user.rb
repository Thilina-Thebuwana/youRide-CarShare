class User < ApplicationRecord
     attr_accessor :firstname, :lastname
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :trackable, :validatable,
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  geocoded_by :ip
  after_validation :geocode
 
   def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.provider = auth.provider
       user.uid = auth.uid
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
       user.firstname = auth.info.firstname
     end
  end
end