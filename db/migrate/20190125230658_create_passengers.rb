class CreatePassengers < ActiveRecord::Migration[5.2]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :passportnumber
      t.integer :flight_id

      t.timestamps
    end
  end
end
