class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :usuarios, :password_digest, :string
    add_column :usuarios, :password, :string
  end
end
