class AddCompraIdToPartePagamento < ActiveRecord::Migration
  def change
    add_reference :parte_pagamentos, :compra, index: true, foreign_key: true
  end
end
