json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :make, :model, :year, :mileage, :color, :style, :number_of_doors, :trans
  json.url vehicle_url(vehicle, format: :json)
end
