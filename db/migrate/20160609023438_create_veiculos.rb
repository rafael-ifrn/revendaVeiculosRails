class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.integer :anoFabricacao
      t.string :chassi
      t.string :placa
      t.integer :cilindradas
      t.binary :foto

      t.timestamps null: false
    end
  end
end
