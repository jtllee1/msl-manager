class CreateTrinket2s < ActiveRecord::Migration[6.0]
  def change
    create_table :trinket_2s do |t|
      t.references :user, foreign_key: true
      t.integer :m_attack, default: 0
      t.float :s_crit_dmg, default: 0.0
      t.float :s_resist, default: 0.0
      t.integer :s_recovery, default: 0
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
