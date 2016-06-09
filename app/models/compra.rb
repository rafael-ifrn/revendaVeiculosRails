class Compra < ActiveRecord::Base

	validates_presence_of :data, :preco, :obs

	belongs_to :veiculo
	has_many :parte_pagamentos

end
