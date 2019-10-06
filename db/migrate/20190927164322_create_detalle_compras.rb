class CreateDetalleCompras < ActiveRecord::Migration[6.0]
  def change
    create_table :detalle_compras do |t|
      t.integer :cantidad
      t.float :subtotal
      t.integer :compra_id
      t.integer :repuesto_servicio_id

      t.timestamps
    end
  end
end
