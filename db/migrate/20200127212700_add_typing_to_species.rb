class AddTypingToSpecies < ActiveRecord::Migration[5.2]
  def change
    remove_column :species, :type
    add_column :species, :typing, :string
  end
end
