class CreateVehiculos < ActiveRecord::Migration[6.0]
  def change
    create_table :vehiculos do |t|
      t.string :tipo
      t.string :modelo
      t.string :color
      t.string :matricula
      t.string :marca
      t.integer :año
      t.float :km
      t.string :chasis
      t.integer :cliente_id

      t.timestamps
    end
  end
end
