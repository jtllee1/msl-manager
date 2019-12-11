class CreateAstromons < ActiveRecord::Migration[5.2]
  def change
    create_table :astromons do |t|
      t.references :user, foreign_key: true
      t.references :specie, foreign_key: true
      t.string :first_gem_shape
      t.string :second_gem_shape
      t.string :third_gem_shape
      t.references :first_gem, foreign_key: true
      t.references :second_gem, foreign_key: true
      t.references :third_gem, foreign_key: true
      t.boolean :variant_state
      t.integer :variant_level

      t.timestamps
    end
  end
end
