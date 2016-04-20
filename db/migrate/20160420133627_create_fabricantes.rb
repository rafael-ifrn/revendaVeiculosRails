class CreateFabricantes < ActiveRecord::Migration
  def change
    create_table :fabricantes do |t|
      t.string :descricao

      t.timestamps null: false
    end
  end
end
