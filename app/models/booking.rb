<<<<<<< HEAD
class Booking < ApplicationRecord
  validate :bookings_must_not_overlap
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :car_id, presence: true
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
    
    
   
end
=======
class Booking < ApplicationRecord
  validate :bookings_must_not_overlap
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :car_id, presence: true
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
    
    
   
end
>>>>>>> Connor
