class Modelo < ActiveRecord::Base

	belongs_to :fabricante
	belongs_to :tipo_veiculo

	validates_presence_of :fabricante_id, :tipo_veiculo_id
	validates_associated :fabricante, :tipo_veiculo

end
