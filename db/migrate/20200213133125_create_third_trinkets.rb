class CreateThirdTrinkets < ActiveRecord::Migration[6.0]
  def change
    create_table :third_trinkets do |t|
      t.references :trinket_3, null: false, foreign_key: true
      t.references :astromon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
