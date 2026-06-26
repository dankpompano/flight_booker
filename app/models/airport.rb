class Airport < ApplicationRecord
  has_many :arriving_flights, class_name: "Flight", foreign_key: "arrival_ids"
  has_many :departing_flights, class_name: "Flight", foreign_key: "departure_ids"
end
