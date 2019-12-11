class Astromon < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  belongs_to :first_gem
  belongs_to :second_gem
  belongs_to :third_gem
end
