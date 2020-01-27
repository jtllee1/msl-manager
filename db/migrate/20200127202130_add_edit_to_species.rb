class AddEditToSpecies < ActiveRecord::Migration[5.2]
  def change
    remove_column :species, :first_skill_name
    remove_column :species, :first_skill_desc
    remove_column :species, :first_skill_pic
    remove_column :species, :second_skill_name
    remove_column :species, :second_skill_desc
    remove_column :species, :second_skill_pic
    remove_column :species, :variant_skill_name
    remove_column :species, :variant_skill_desc
    remove_column :species, :variant_skill_pic
    add_column :species, :first_skill_name, :string
    add_column :species, :first_skill_desc, :text
    add_column :species, :first_skill_pic, :string
    add_column :species, :second_skill_name, :string
    add_column :species, :second_skill_desc, :text
    add_column :species, :second_skill_pic, :string
    add_column :species, :variant_skill_name, :string
    add_column :species, :variant_skill_desc, :text
    add_column :species, :variant_skill_pic, :string
  end
end
