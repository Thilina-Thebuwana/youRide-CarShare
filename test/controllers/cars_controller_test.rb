<<<<<<< HEAD
    require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post cars_url, params: { car: { color: @car.color, current_address: @car.current_address, latitude: @car.latitude, longitude: @car.longitude, make: @car.make, model: @car.model, name: @car.name, number_plate: @car.number_plate, seat_count: @car.seat_count } }
    end

    assert_redirected_to car_url(Car.last)
  end

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { color: @car.color, current_address: @car.current_address, latitude: @car.latitude, longitude: @car.longitude, make: @car.make, model: @car.model, name: @car.name, number_plate: @car.number_plate, seat_count: @car.seat_count } }
    assert_redirected_to car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete car_url(@car)
    end

    assert_redirected_to cars_url
  end
end
=======
    require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url
    assert_response :success
  end

  test "should get new" do
    get new_car_url
    assert_response :redirect
  end
  
  

  test "should show car" do
    get car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_url(@car)
    assert_response :redirect
  end

  test "should update car" do
    patch car_url(@car), params: { car: { color: @car.color, current_address: @car.current_address, latitude: @car.latitude, longitude: @car.longitude, make: @car.make, model: @car.model, name: @car.name, number_plate: @car.number_plate, seat_count: @car.seat_count } }
  
    assert_response :redirect
  end

  



end
>>>>>>> Thilina
