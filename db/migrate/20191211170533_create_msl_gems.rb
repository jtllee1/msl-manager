class CreateMslGems < ActiveRecord::Migration[5.2]
  def change
    create_table :msl_gems do |t|
      t.references :user, foreign_key: true
      t.string :gem_shape
      t.references :gem_category, foreign_key: true
      t.boolean :m_hp
      t.boolean :m_defence
      t.boolean :m_recovery
      t.boolean :m_crit_dmg
      t.boolean :m_crit_rate
      t.integer :s_hp
      t.integer :s_attack
      t.integer :s_defence
      t.integer :s_recovery
      t.integer :s_crit_dmg
      t.integer :s_crit_rate

      t.timestamps
    end
  end
end
