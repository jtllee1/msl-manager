class CreateFirstGems < ActiveRecord::Migration[5.2]
  def change
    create_table :first_gems do |t|
      t.references :msl_gem, foreign_key: true

      t.timestamps
    end
  end
end
