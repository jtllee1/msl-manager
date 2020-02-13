class CreateTrinket3s < ActiveRecord::Migration[6.0]
  def change
    create_table :trinket_3s do |t|
      t.references :user, foreign_key: true
      t.float :m_crit_res, default: 0.0
      t.integer :s_defence, default: 0
      t.integer :s_attack, default: 0
      t.integer :s_hp, default: 0
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
