json.extract! passenger, :id, :name, :passportnumber, :flight_id, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)
