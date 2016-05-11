class RemoveOldSenhaAndPasswordFromUsuarios < ActiveRecord::Migration
  def up
    remove_column :usuarios, :password, :string
    remove_column :usuarios, :senha, :string
  end

  def down
    add_column :usuarios, :password, :string
    add_column :usuarios, :senha, :string
  end
end
