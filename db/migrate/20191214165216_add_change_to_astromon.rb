class AddChangeToAstromon < ActiveRecord::Migration[5.2]
  def change
    remove_column :astromons, :first_gem_id
    remove_column :astromons, :second_gem_id
    remove_column :astromons, :third_gem_id
  end
end
