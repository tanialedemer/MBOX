class Cliente < ApplicationRecord
	 validates :documento, length: { maximum: 13 }, presence: true
	 validates :nombre, presence: true
	 validates :apellido, presence: true
	 

end
