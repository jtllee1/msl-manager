class AddChangeToMslGem < ActiveRecord::Migration[5.2]
  def change
    remove_column :msl_gems, :m_hp
    remove_column :msl_gems, :m_defence
    remove_column :msl_gems, :m_recovery
    remove_column :msl_gems, :m_crit_dmg
    remove_column :msl_gems, :m_crit_rate
    add_column :msl_gems, :m_hp, :integer
    add_column :msl_gems, :m_attack, :integer
    add_column :msl_gems, :m_defence, :integer
    add_column :msl_gems, :m_recovery, :integer
    add_column :msl_gems, :m_crit_dmg, :integer
    add_column :msl_gems, :m_crit_rate, :integer
  end
end
