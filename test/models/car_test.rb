require 'test_helper'

class CarTest < ActiveSupport::TestCase
 test "Car name validation should trigger" do
     assert_not Car.new( make: 'Holden', model: 'Barina' , number_plate: 'OLD247' , color: 'Red' , seat_count: '4', current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
   end
    
    test "Make prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , model: 'Barina' , number_plate: 'OLD247' , color: 'Red' , seat_count: '4', current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
    end 
    
    test "Model prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', number_plate: 'OLD247' , color: 'Red' , seat_count: '4', current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
    end 
    
    
     test "Number Plate prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', model: 'Barina' ,  color: 'Red' , seat_count: '4', current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
    end 
     
    test "Color prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', model: 'Barina' , number_plate: 'OLD247' ,  seat_count: '4', current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
    end 
    
     test "Seat Countl prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', model: 'Barina' , number_plate: 'OLD247' , color: 'Red' ,  current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
    end 
    
     test "Current Address prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', model: 'Barina' , number_plate: 'OLD247' , color: 'Red' , seat_count: '4',  latitude: "-37.809884", longitude: "144.971126", status: 'Available').save
    end 
    
     test "Latitude prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', model: 'Barina' , number_plate: 'OLD247' , color: 'Red' , seat_count: '4', current_address: '39 Lonsdale Street Melbourne',  longitude: "144.971126", status: 'Available').save
    end 
    
         
     test "Status prescence Validation should trigger" do 
        assert_not Car.new(name: 'Thilina' , make: 'Holden', model: 'Barina' , number_plate: 'OLD247' , color: 'Red' , seat_count: '4', current_address: '39 Lonsdale Street Melbourne', latitude: "-37.809884", longitude: "144.971126").save
   
    end 
end
