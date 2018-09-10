require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do 
      
      
      it 'ensures first name presence' do
           user = User.new( last_name: "Last", email: "email@gmail.com", longitude: " ", latitude: " ", password: "Password123", password_confirmation: "Pasword123").save
      end 
      
        it 'ensures last name presence' do 
          user = User.new(first_name: "First", email: "email@gmail.com", longitude: " ", latitude: " ", password: "Password123", password_confirmation: "Pasword123").save
      end 
      
        it 'ensures email presence' do 
           user = User.new(first_name: "First", last_name: "Last", longitude: " ", latitude: " ", password: "Password123", password_confirmation: "Pasword123").save
          expect(user).to eq(false)
      end 
      

  end 
    
end

