class CreateCobroFacturas < ActiveRecord::Migration[6.0]
  def change
    create_table :cobro_facturas do |t|
      t.float :cobro_monto
      t.integer :venta_id

      t.timestamps
    end
  end
end
