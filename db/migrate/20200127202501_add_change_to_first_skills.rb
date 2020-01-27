class AddChangeToFirstSkills < ActiveRecord::Migration[5.2]
  def change
    drop_table :first_skills
  end
end
