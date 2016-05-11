class AddFabricanteIdToModelos < ActiveRecord::Migration
  def change
    add_reference :modelos, :fabricante, index: true, foreign_key: true
  end
end
