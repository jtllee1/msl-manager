class CreateSecondTrinkets < ActiveRecord::Migration[6.0]
  def change
    create_table :second_trinkets do |t|
      t.references :astromon, null: false, foreign_key: true
      t.references :trinket_two, null: false, foreign_key: true

      t.timestamps
    end
  end
end
