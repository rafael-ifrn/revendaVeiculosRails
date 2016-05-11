class AddTipoVeiculoIdToModelos < ActiveRecord::Migration
  def change
    add_reference :modelos, :tipo_veiculo, index: true, foreign_key: true
  end
end
