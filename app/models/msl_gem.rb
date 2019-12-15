class MslGem < ApplicationRecord
  belongs_to :user
  belongs_to :gem_category
  has_one :first_gem
  has_one :second_gem
  has_one :third_gem
end
