class AddModeloIdToVeiculo < ActiveRecord::Migration
  def change
    add_reference :veiculos, :modelo, index: true, foreign_key: true
  end
end
