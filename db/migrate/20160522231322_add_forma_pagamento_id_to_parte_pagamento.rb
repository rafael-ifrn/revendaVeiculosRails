class AddFormaPagamentoIdToPartePagamento < ActiveRecord::Migration
  def change
    add_reference :parte_pagamentos, :forma_pagamento, index: true, foreign_key: true
  end
end
