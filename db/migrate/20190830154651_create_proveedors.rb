class CreateProveedors < ActiveRecord::Migration[6.0]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.text :direccion
      t.string :telefono
      t.string :email
      t.string :documento
      t.integer :ruc

      t.timestamps
    end
  end
end
