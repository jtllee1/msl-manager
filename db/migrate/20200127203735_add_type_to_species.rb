class AddTypeToSpecies < ActiveRecord::Migration[5.2]
  def change
    add_column :species, :type, :string
  end
end
