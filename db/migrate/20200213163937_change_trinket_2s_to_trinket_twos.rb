class ChangeTrinket2sToTrinketTwos < ActiveRecord::Migration[6.0]
  def change
    rename_table :trinket_2s, :trinket_twos
  end
end
