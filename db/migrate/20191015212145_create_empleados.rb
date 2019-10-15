class CreateEmpleados < ActiveRecord::Migration[6.0]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nac
      t.string :documento
      t.string :telefono
      t.string :especialidad
      t.string :direccion
      t.date :fecha_contratacion
      t.float :salario
      t.integer :usuario_id

      t.timestamps
    end
  end
end
