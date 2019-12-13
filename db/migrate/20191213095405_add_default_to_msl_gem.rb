class AddDefaultToMslGem < ActiveRecord::Migration[5.2]
  def change
    remove_column :msl_gems, :s_hp
    remove_column :msl_gems, :s_attack
    remove_column :msl_gems, :s_defence
    remove_column :msl_gems, :s_recovery
    remove_column :msl_gems, :s_crit_dmg
    remove_column :msl_gems, :s_crit_rate
    remove_column :msl_gems, :m_hp
    remove_column :msl_gems, :m_attack
    remove_column :msl_gems, :m_defence
    remove_column :msl_gems, :m_recovery
    remove_column :msl_gems, :m_crit_dmg
    remove_column :msl_gems, :m_crit_rate
    add_column :msl_gems, :s_hp, :integer, default: 0
    add_column :msl_gems, :s_attack, :integer, default: 0
    add_column :msl_gems, :s_defence, :integer, default: 0
    add_column :msl_gems, :s_recovery, :integer, default: 0
    add_column :msl_gems, :s_crit_dmg, :integer, default: 0
    add_column :msl_gems, :s_crit_rate, :integer, default: 0
    add_column :msl_gems, :m_hp, :integer, default: 0
    add_column :msl_gems, :m_attack, :integer, default: 0
    add_column :msl_gems, :m_defence, :integer, default: 0
    add_column :msl_gems, :m_recovery, :integer, default: 0
    add_column :msl_gems, :m_crit_dmg, :integer, default: 0
    add_column :msl_gems, :m_crit_rate, :integer, default: 0
  end
end
