class CreateMecanicos < ActiveRecord::Migration[6.0]
  def change
    create_table :mecanicos do |t|
      t.string :especialidad
      t.integer :empleado_id

      t.timestamps
    end
  end
end
