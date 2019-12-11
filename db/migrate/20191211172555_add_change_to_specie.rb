class AddChangeToSpecie < ActiveRecord::Migration[5.2]
  def change
    rename_column :species, :recover, :recovery
  end
end
