class TrinketTwo < ApplicationRecord
  belongs_to :user
  has_one :second_trinket
end
