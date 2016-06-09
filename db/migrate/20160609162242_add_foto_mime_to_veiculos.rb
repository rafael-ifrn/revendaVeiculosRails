class AddFotoMimeToVeiculos < ActiveRecord::Migration
  def change
  	add_column :veiculos, :fotoMime, :string
  end
end
