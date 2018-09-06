require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context "create new user" do
      
      scenario "should be successful" do 
         visit new_user_registration_path
          within('.panel-body') do 
              fill_in 'Email', with: 'test@gmail.com'
              fill_in 'First name', with: 'John'
              fill_in 'Last name', with: 'Doe'
              fill_in 'Password', with: 'Password1234'
              fill_in 'password confirmation', with: 'Password1234'
          end 
          click_button 'Sign Up'
          
      end 
      
      scenario "should fail" do 
          visit new_user_registration_path
         within('.panel-body') do 
              fill_in 'Email', with: 'test@gmail.com'
              fill_in 'First name', with: 'John'
              fill_in 'Last name', with: 'Doe'
              fill_in 'Password', with: 'Password1234'
              fill_in 'password confirmation', with: 'Password1234'
          end 
          click_button 'Sign Up'
          
      end 
  end 
    
    context "Login new user" do 
        scenario "Should be successful" do 
            visit new_user_session_path
           within('.panel-body') do 
              fill_in 'Email', with: 'test@gmail.com'
              fill_in 'Password', with: 'Password1234'
          end 
          click_button 'log in'
        end 
        
        scenario "Should Fail" do
             visit new_user_session_path
           within('.panel-body') do 
              fill_in 'Email', with: 'test@gmail.com'
              fill_in 'Password', with: ''
          end 
          click_button 'log in'
        end 
    end 
end
