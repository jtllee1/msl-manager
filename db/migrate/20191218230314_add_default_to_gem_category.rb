class AddDefaultToGemCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :gem_categories, :hp
    remove_column :gem_categories, :attack
    remove_column :gem_categories, :defence
    remove_column :gem_categories, :recovery
    remove_column :gem_categories, :crit_dmg
    remove_column :gem_categories, :crit_rate
    remove_column :gem_categories, :resist
    add_column :variant_skills, :resist, :float, default: 0
    add_column :msl_gems, :m_resist, :float, default: 0
    add_column :msl_gems, :s_resist, :float, default: 0
    add_column :gem_categories, :hp, :float, default: 0
    add_column :gem_categories, :attack, :float, default: 0
    add_column :gem_categories, :defence, :float, default: 0
    add_column :gem_categories, :recovery, :float, default: 0
    add_column :gem_categories, :crit_dmg, :float, default: 0
    add_column :gem_categories, :crit_rate, :float, default: 0
    add_column :gem_categories, :resist, :float, default: 0
  end
end
