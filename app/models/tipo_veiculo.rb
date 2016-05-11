class TipoVeiculo < ActiveRecord::Base

	validates_presence_of :descricao
	validates_length_of :descricao, minimum: 2, allow_blank: false
	validates_format_of :descricao, :with => /[a-zA-z0-9 ]+/, :on => [:create, :update] , :message => 'Permitido apenas letras e números'

	has_many :modelos
	
end
