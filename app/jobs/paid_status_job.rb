class PaidStatusJob < ApplicationJob
  queue_as :default

  def perform(booking)
     booking.update(paid: "true")
  end
end
