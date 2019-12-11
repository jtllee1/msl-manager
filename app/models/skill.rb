class Skill < ApplicationRecord
  has_many :first_skills
  has_many :second_skills
end
