class AddChangeToSecondGems < ActiveRecord::Migration[5.2]
  def change
    add_reference :second_gems, :astromon, foreign_key: true
  end
end
