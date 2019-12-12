class AddSlugToSpecie < ActiveRecord::Migration[5.2]
  def change
    add_column :species, :slug, :string
  end
end
