<<<<<<< HEAD
json.extract! booking, :id, :user_id, :car_id, :start_time, :end_time, :created_at, :updated_at
json.url booking_url(booking, format: :json)
=======
json.extract! booking, :id, :user_id, :car_id, :start_time, :end_time, :paid, :created_at, :updated_at
json.url booking_url(booking, format: :json)
>>>>>>> Thilina
