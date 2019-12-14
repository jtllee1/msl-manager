class AddChangeToFirstGems < ActiveRecord::Migration[5.2]
  def change
    add_reference :first_gems, :astromon, foreign_key: true
  end
end
