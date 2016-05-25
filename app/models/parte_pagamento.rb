class PartePagamento < ActiveRecord::Base

	validates_presence_of :quantia, :forma_pagamento_id

	belongs_to :forma_pagamento
	belongs_to :compra

end
