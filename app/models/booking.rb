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
  validates :price, presence: true, numericality: { greater_than: 0 }
 
  
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
    
  def price_in_cents
    (price * 100).to_i
  end  
   
end


class CreditCard < ActiveRecord::Base
  belongs_to :user
 
  before_validation :set_last_digits
 
  attr_accessor :number, :cvc
 
  validates :digits, presence: true
  validates :month, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 12 }
  validates :year, presence: true, numericality: { greater_than_or_equal_to: DateTime.now.year }
 
  def set_last_digits
    if number
      number.to_s.gsub!(/\s/,'')
      self.digits ||= number.to_s.length <= 4 ? number : number.to_s.slice(-4..-1)
    end
  end
end
>>>>>>> Thilina
