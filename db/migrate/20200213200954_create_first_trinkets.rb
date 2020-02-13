class CreateFirstTrinkets < ActiveRecord::Migration[6.0]
  def change
    create_table :first_trinkets do |t|
      t.references :astromon, null: false, foreign_key: true
      t.references :trinket_one, null: false, foreign_key: true

      t.timestamps
    end
  end
end
