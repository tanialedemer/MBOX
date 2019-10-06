class CreateFuncions < ActiveRecord::Migration[6.0]
  def change
    create_table :funcions do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
