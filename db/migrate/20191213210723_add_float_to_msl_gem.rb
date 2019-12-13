class AddFloatToMslGem < ActiveRecord::Migration[5.2]
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
    add_column :msl_gems, :s_hp, :float, default: 0
    add_column :msl_gems, :s_attack, :float, default: 0
    add_column :msl_gems, :s_defence, :float, default: 0
    add_column :msl_gems, :s_recovery, :float, default: 0
    add_column :msl_gems, :s_crit_dmg, :float, default: 0
    add_column :msl_gems, :s_crit_rate, :float, default: 0
    add_column :msl_gems, :m_hp, :float, default: 0
    add_column :msl_gems, :m_attack, :float, default: 0
    add_column :msl_gems, :m_defence, :float, default: 0
    add_column :msl_gems, :m_recovery, :float, default: 0
    add_column :msl_gems, :m_crit_dmg, :float, default: 0
    add_column :msl_gems, :m_crit_rate, :float, default: 0
  end
end
