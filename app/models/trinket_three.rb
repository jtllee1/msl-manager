class TrinketThree < ApplicationRecord
  belongs_to :user
  has_one :third_trinket
end
