class SecondGem < ApplicationRecord
  belongs_to :msl_gem
  has_many :astromons
end
