class CreateCompras < ActiveRecord::Migration[6.0]
  def change
    create_table :compras do |t|
      t.date :fecha
      t.float :total_iva
      t.float :total
      t.float :saldo
      t.integer :proveedor_id
      t.integer :tipo_factura_id
      t.integer :num_fact
      t.string :estado

      t.timestamps
    end
  end
end
