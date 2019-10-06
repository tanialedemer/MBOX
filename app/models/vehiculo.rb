class Vehiculo < ApplicationRecord
	validates :descripcion, presence: true
	validates :modelo, presence: true
	validates :matricula, presence: true, uniqueness: true
	#validates :cliente_id, presence: true
end
