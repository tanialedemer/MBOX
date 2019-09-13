json.array!(@vehiculos) do |vehiculo|
  json.extract! vehiculo, :id, :descripcion, :modelo, :color, :matricula, :marca, :km, :chasis ,:created_at, :updated_at
  json.url vehiculo_url(vehiculo, format: :json)
end
