class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :Number
      t.string :originairport
      t.string :destinationairport
      t.datetime :departuretime
      t.datetime :arrivaltime
      t.integer :seatsnumber
      t.integer :passengersnumber
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
