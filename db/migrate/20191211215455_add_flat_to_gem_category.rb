class AddFlatToGemCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :gem_categories, :flat, :boolean
  end
end
