require 'test_helper'

class BookingTest < ActiveSupport::TestCase
   test "car ID validation should trigger" do
     assert_not Booking.new(start_time: '2018-09-06 20:01:00 +1000' , end_time: '2018-09-06 21:01:00 +1000').save
   end
    
    test "Start Time prescence Validation should trigger" do 
        assert_not Booking.new(car_id: '1', end_time: '2018-09-06 21:01:00 +1000').save
    end 
    
    test "End Time prescence Validation should trigger" do 
        assert_not Booking.new(car_id: '1', start_time: '2018-09-06 20:01:00 +1000').save
    end 
    
    

  
end
