class FirstSkill < ApplicationRecord
  belongs_to :skill
  has_many :species
end
