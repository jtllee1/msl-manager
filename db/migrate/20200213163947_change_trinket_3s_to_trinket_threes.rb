class ChangeTrinket3sToTrinketThrees < ActiveRecord::Migration[6.0]
  def change
    rename_table :trinket_3s, :trinket_threes
  end
end
