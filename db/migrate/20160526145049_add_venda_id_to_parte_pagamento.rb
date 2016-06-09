class AddVendaIdToPartePagamento < ActiveRecord::Migration
  def change
    add_reference :parte_pagamentos, :venda, index: true, foreign_key: true
  end
end
