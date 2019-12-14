class AddChangeToThirdGems < ActiveRecord::Migration[5.2]
  def change
    add_reference :third_gems, :astromon, foreign_key: true
  end
end
