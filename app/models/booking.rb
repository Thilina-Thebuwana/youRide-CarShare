class Booking < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  belongs_to :car
=======
  validate :bookings_must_not_overlap
  
  belongs_to :user
  belongs_to :car
    
    

private

def bookings_must_not_overlap
  return if self
              .class
              .where.not(id: id)
              .where(car_id: car_id)
              .where('start_time < ? AND end_time > ?', end_time, start_time)
              .none?

  errors.add(:base, 'The car has already been booked for that time frame')
end
    
    
   
>>>>>>> Thilina
end
