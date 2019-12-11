class AddSlugToVariantSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :variant_skills, :slug, :string
  end
end
