class AddVeiculoIdToVenda < ActiveRecord::Migration
  def change
    add_reference :vendas, :veiculo, index: true, foreign_key: true
  end
end
