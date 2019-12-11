class Specie < ApplicationRecord
  belongs_to :first_skill
  belongs_to :second_skill
  belongs_to :variant_skill
end
