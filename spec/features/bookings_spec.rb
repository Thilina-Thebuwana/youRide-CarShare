require 'rails_helper'

RSpec.feature "Bookings", type: :feature do
  context 'create new booking'
    scenario 'should be successful' do 
        visit new_booking_path
        within('.panel-body') do
        find('select', :id => 'car_name').find(:xpath, 'option[1]').select_option
        find('#booking_start_time_4i').find(:xpath, 'option[2]').select_option
        find('#booking_start_time_5i').find(:xpath, 'option[2]').select_option
        find('#booking_end_time_4i').find(:xpath, 'option[3]').select_option
        find('#booking_end_time_5i').find(:xpath, 'option[2]').select_option
        end 
        click_button 'Create Booking'
        expect(page).to have_content('Booking was successfully created.')
        
    end 
end
