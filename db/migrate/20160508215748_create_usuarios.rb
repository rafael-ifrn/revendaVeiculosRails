class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :email
      t.string :login
      t.string :senha
      t.boolean :ativo
      t.boolean :gerente

      t.index :cpf, unique: true
      t.index :email, unique: true
      t.index :login, unique: true

      t.timestamps null: false
    end
  end
end
