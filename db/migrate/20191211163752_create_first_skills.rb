class CreateFirstSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :first_skills do |t|
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
