class ResetCarAvailabilityJob < ApplicationJob
  queue_as :default

  def perform(car)
    car.update(status: "Available")
  end
end