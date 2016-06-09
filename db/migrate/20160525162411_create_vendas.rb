class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.date :data
      t.decimal :desconto
      t.decimal :comissao
      t.text :obs
      t.integer :status

      t.timestamps null: false
    end
  end
end
