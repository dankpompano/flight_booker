class CreateFlights < ActiveRecord::Migration[8.1]
  def change
    create_table :flights do |t|
      t.integer :arrival_ids
      t.integer :departure_ids
      t.time :start
      t.float :flight_duration
      t.timestamps
    end
  end
end
