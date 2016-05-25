class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.date :data
      t.decimal :preco
      t.text :obs

      t.timestamps null: false
    end
  end
end
