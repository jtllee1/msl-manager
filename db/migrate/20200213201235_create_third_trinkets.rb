class CreateThirdTrinkets < ActiveRecord::Migration[6.0]
  def change
    create_table :third_trinkets do |t|
      t.references :astromon, null: false, foreign_key: true
      t.references :trinket_three, null: false, foreign_key: true

      t.timestamps
    end
  end
end
