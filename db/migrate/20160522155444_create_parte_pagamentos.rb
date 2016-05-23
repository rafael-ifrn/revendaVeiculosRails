class CreatePartePagamentos < ActiveRecord::Migration
  def change
    create_table :parte_pagamentos do |t|
      t.decimal :quantia

      t.timestamps null: false
    end
  end
end
