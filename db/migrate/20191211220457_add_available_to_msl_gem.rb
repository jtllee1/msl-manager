class AddAvailableToMslGem < ActiveRecord::Migration[5.2]
  def change
    add_column :msl_gems, :available, :boolean, default: true
  end
end
