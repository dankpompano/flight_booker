class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_ids"
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_ids"

  def flight_date_formatted
    flight_date.strftime("%m/%d/%Y")
  end
end
