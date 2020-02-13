class ChangeTrinket1sToTrinketOnes < ActiveRecord::Migration[6.0]
  def change
    rename_table :trinket_1s, :trinket_ones
  end
end
