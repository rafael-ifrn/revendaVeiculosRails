class Compra < ActiveRecord::Base

	validates_presence_of :data, :preco, :obs

	has_many :parte_pagamentos

end
