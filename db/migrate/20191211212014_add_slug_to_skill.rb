class AddSlugToSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :slug, :string
  end
end
