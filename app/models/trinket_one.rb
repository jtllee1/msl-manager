class TrinketOne < ApplicationRecord
  belongs_to :user
  has_one :first_trinket
end
