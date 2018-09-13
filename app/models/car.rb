class Car < ApplicationRecord
    has_attached_file :image
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    validates :image, attachment_presence: true
    validates :name, presence: true
    validates :make, presence: true
    validates :model, presence: true
    validates :number_plate, presence: true
    
    has_many :bookings
end
