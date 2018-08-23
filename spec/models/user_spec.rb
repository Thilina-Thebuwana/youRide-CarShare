require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do 
      
      
      it 'ensures first name presence' do
<<<<<<< HEAD
           user = User.new( last_name: "Last", email: "email@gmail.com", longitude: "141.12121", latitude: "-31.13131", password: "Password123", password_confirmation: "Pasword123").save
      end 
      
        it 'ensures last name presence' do 
          user = User.new(first_name: "First", email: "email@gmail.com", longitude: "141.12121", latitude: "-31.13131", password: "Password123", password_confirmation: "Pasword123").save
      end 
      
        it 'ensures email presence' do 
           user = User.new(first_name: "First", last_name: "Last", longitude: "141.12121", latitude: "-31.13131", password: "Password123", password_confirmation: "Pasword123").save
=======
           user = User.new( last_name: "Last", email: "email@gmail.com", longitude: " ", latitude: " ", password: "Password123", password_confirmation: "Pasword123").save
      end 
      
        it 'ensures last name presence' do 
          user = User.new(first_name: "First", email: "email@gmail.com", longitude: " ", latitude: " ", password: "Password123", password_confirmation: "Pasword123").save
      end 
      
        it 'ensures email presence' do 
           user = User.new(first_name: "First", last_name: "Last", longitude: " ", latitude: " ", password: "Password123", password_confirmation: "Pasword123").save
>>>>>>> Connor
          expect(user).to eq(false)
      end 
      
        it 'should save successfully' do 
            user = User.new(first_name: "First", last_name: "Last", email: "email@gmail.com", longitude: "141.12121", latitude: "-31.13131", password: "Password123", password_confirmation: "Pasword123").save
          expect(user).to eq(true)
      end 
      

  end 
    
end

