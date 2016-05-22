class CreateFormaPagamentos < ActiveRecord::Migration
  def change
    create_table :forma_pagamentos do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
