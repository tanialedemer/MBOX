json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :cliente_id, :tipo, :modelo, :color, :matricula, :año, :marca, :km, :chasis ,:created_at, :updated_at
  json.url vehiculo_url(vehiculo, format: :json)
end
