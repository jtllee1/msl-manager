class AddEvoToSpecies < ActiveRecord::Migration[5.2]
  def change
    add_column :species, :evo, :integer
  end
end
