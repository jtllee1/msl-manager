class Astromon < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  has_one :first_gem
  has_one :second_gem
  has_one :third_gem

  def self.first_gem(astromon)
    FirstGem.find_by(astromon_id: astromon.id)
  end

  def self.second_gem(astromon)
    SecondGem.find_by(astromon_id: astromon.id)
  end

  def self.third_gem(astromon)
    ThirdGem.find_by(astromon_id: astromon.id)
  end

  def self.hp_sum(first_gem, second_gem, third_gem, stat)
    if first_gem && second_gem && third_gem
      str = "first_gem.msl_gem.m_#{stat} + first_gem.msl_gem.s_#{stat} + second_gem.msl_gem.m_#{stat} + second_gem.msl_gem.s_#{stat} + third_gem.msl_gem.m_#{stat} + third_gem.msl_gem.s_#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.gem_hp(astromon, stat)
    first_gem = Astromon.first_gem(astromon)
    second_gem = Astromon.second_gem(astromon)
    third_gem = Astromon.third_gem(astromon)
    if first_gem && second_gem && third_gem && astromon.first_gem.msl_gem.gem_category == astromon.second_gem.msl_gem.gem_category && astromon.first_gem.msl_gem.gem_category == astromon.third_gem.msl_gem.gem_category
      str = "astromon.first_gem.msl_gem.gem_category.#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.flat(astromon)
    astromon.first_gem.msl_gem.gem_category.flat ? "" : "%"
  end
end
