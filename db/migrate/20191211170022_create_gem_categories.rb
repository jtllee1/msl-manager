class CreateGemCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :gem_categories do |t|
      t.string :name
      t.string :pic
      t.text :description
      t.integer :hp
      t.integer :attack
      t.integer :defence
      t.integer :recovery
      t.integer :crit_dmg
      t.integer :crit_rate
      t.integer :resist

      t.timestamps
    end
  end
end
