json.extract! car, :id, :name, :make, :model, :number_plate, :color, :seat_count, :current_address, :latitude, :longitude, :created_at, :updated_at
json.url car_url(car, format: :json)
