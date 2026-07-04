class AddPassengerNumberToFlights < ActiveRecord::Migration[8.1]
  def change
    add_column :flights, :pass_num, :integer
  end
end
