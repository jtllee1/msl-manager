class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :name
      t.string :element
      t.string :pic
      t.integer :hp
      t.integer :attack
      t.integer :defence
      t.integer :recover
      t.integer :crit_dmg
      t.integer :crit_rate
      t.integer :resist
      t.references :first_skill, foreign_key: true
      t.references :second_skill, foreign_key: true
      t.references :variant_skill, foreign_key: true

      t.timestamps
    end
  end
end
