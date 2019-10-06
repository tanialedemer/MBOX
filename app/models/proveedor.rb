class Proveedor < ApplicationRecord
	  validates :nombre, presence: true
	  validates :direccion, presence: true
	  validates :documento, length: { maximum: 13 }, presence: true, uniqueness: true, numericality: { only_integer: true }
	
end
