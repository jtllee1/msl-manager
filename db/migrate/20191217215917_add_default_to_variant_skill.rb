class AddDefaultToVariantSkill < ActiveRecord::Migration[5.2]
  def change
    remove_column :variant_skills, :hp
    remove_column :variant_skills, :attack
    remove_column :variant_skills, :defence
    remove_column :variant_skills, :recovery
    remove_column :variant_skills, :crit_dmg
    remove_column :variant_skills, :crit_rate
    add_column :variant_skills, :hp, :float, default: 0
    add_column :variant_skills, :attack, :float, default: 0
    add_column :variant_skills, :defence, :float, default: 0
    add_column :variant_skills, :recovery, :float, default: 0
    add_column :variant_skills, :rit_dmg, :float, default: 0
    add_column :variant_skills, :crit_rate, :float, default: 0
  end
end
