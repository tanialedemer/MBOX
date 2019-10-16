class CreatePagoFacturas < ActiveRecord::Migration[6.0]
  def change
    create_table :pago_facturas do |t|
      t.float :monto_pago
      t.integer :compra_id

      t.timestamps
    end
  end
end
