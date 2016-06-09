class Venda < ActiveRecord::Base

	validates_presence_of :data, :desconto, :comissao

	belongs_to :veiculo
	belongs_to :vendedor, class_name: "Usuario"
#	belongs_to :autorizador, class_name: "Usuario"

	has_many :parte_pagamentos

end
