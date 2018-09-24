class User < ApplicationRecord
    validates :email, uniqueness: true
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_many :credit_cards, dependent: :destroy
 
    after_commit :assign_customer_id, on: :create
    has_many :bookings
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :trackable, :validatable,
          :omniauthable, :omniauth_providers => [:facebook , :google_oauth2]
    
  
   def self.from_omniauth(auth)
     where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
       user.provider = auth.provider
       user.uid = auth.uid
       user.email = auth.info.email
       user.password = Devise.friendly_token[0,20]
     end
  end
    
    
  
 
  def assign_customer_id
    customer = Stripe::Customer.create({email: email}, :api_key => "sk_test_an57VrZhcK4wp3bUdSyX0bIP")
    self.customer_id = customer.id
  end
end

