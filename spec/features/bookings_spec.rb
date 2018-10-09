require 'rails_helper'

RSpec.feature "Bookings", type: :feature do
  context 'create new booking'
    scenario 'should be successful' do 
        visit new_booking_path
        
        find_field('booking[car_id]').find(:xpath, 'option[1]').select_option
        find_field('post[end_time]').find(:xpath, 'option[2]').select_option
        click_button 'Create Booking'
        expect(page).to have_content('Booking was successfully created.')
        
    end 
end
