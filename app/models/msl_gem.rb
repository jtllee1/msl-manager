class MslGem < ApplicationRecord
  belongs_to :user
  belongs_to :gem_category
  has_many :first_gems
  has_many :second_gems
  has_many :third_gems
end
