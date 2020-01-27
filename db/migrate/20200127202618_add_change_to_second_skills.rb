class AddChangeToSecondSkills < ActiveRecord::Migration[5.2]
  def change
    drop_table :second_skills
  end
end
