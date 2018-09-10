class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :make
      t.string :model
      t.string :number_plate
      t.string :color
      t.string :seat_count
      t.string :current_address
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
