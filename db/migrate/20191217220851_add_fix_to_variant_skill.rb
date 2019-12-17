class AddFixToVariantSkill < ActiveRecord::Migration[5.2]
  def change
    remove_column :variant_skills, :rit_dmg
    add_column :variant_skills, :crit_dmg, :float, default: 0
  end
end
