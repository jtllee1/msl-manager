class Specie < ApplicationRecord
  has_one :variant_skill
  has_many :astromons
end
