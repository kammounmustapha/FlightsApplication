json.extract! flight, :id, :Number, :originairport, :destinationairport, :departuretime, :arrivaltime, :seatsnumber, :passengersnumber, :price, :user_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
