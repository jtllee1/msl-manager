class AddChangeToSpecies < ActiveRecord::Migration[5.2]
  def change
    remove_column :species, :first_skill_id
    remove_column :species, :second_skill_id
    remove_column :species, :variant_skill_id
    add_column :species, :first_skill_name, :text
    add_column :species, :first_skill_desc, :text
    add_column :species, :first_skill_pic, :text
    add_column :species, :second_skill_name, :text
    add_column :species, :second_skill_desc, :text
    add_column :species, :second_skill_pic, :text
    add_column :species, :variant_skill_name, :text
    add_column :species, :variant_skill_desc, :text
    add_column :species, :variant_skill_pic, :text
  end
end
