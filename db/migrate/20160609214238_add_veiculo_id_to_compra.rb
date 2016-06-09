class AddVeiculoIdToCompra < ActiveRecord::Migration
  def change
    add_reference :compras, :veiculo, index: true, foreign_key: true
  end
end
