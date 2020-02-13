class CreateTrinket1s < ActiveRecord::Migration[6.0]
  def change
    create_table :trinket_1s do |t|
      t.references :user, foreign_key: true
      t.integer :m_hp, default: 0
      t.integer :s_defence, default: 0
      t.integer :s_recovery, default: 0
      t.float :s_crit_res, default: 0.0
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
