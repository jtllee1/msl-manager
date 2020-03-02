class Astromon < ApplicationRecord
  belongs_to :user
  belongs_to :specie
  has_one :first_gem
  has_one :second_gem
  has_one :third_gem
  has_one :first_trinket
  has_one :second_trinket
  has_one :third_trinket

  def self.find_first_gem(astromon)
    FirstGem.find_by(astromon_id: astromon.id)
  end

  def self.find_second_gem(astromon)
    SecondGem.find_by(astromon_id: astromon.id)
  end

  def self.find_third_gem(astromon)
    ThirdGem.find_by(astromon_id: astromon.id)
  end

  def self.find_first_trinket(astromon)
    FirstTrinket.find_by(astromon_id: astromon.id)
  end

  def self.find_second_trinket(astromon)
    SecondTrinket.find_by(astromon_id: astromon.id)
  end

  def self.find_third_trinket(astromon)
    ThirdTrinket.find_by(astromon_id: astromon.id)
  end

  def self.stat_sum(first_gem, second_gem, third_gem, stat)
    if first_gem && second_gem && third_gem
      str = "first_gem.msl_gem.m_#{stat} + first_gem.msl_gem.s_#{stat} + second_gem.msl_gem.m_#{stat} + second_gem.msl_gem.s_#{stat} + third_gem.msl_gem.m_#{stat} + third_gem.msl_gem.s_#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.gem_stat(astromon, stat)
    first_gem = Astromon.find_first_gem(astromon)
    second_gem = Astromon.find_second_gem(astromon)
    third_gem = Astromon.find_third_gem(astromon)
    if first_gem && second_gem && third_gem && astromon.first_gem.msl_gem.gem_category == astromon.second_gem.msl_gem.gem_category && astromon.first_gem.msl_gem.gem_category == astromon.third_gem.msl_gem.gem_category
      str = "astromon.first_gem.msl_gem.gem_category.#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.trinket_one_stat(astromon, type, stat)
    @first_trinket = Astromon.find_first_trinket(astromon)
    if @first_trinket
      str = "@first_trinket.trinket_one.#{type}_#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.trinket_two_stat(astromon, type, stat)
    @second_trinket = Astromon.find_second_trinket(astromon)
    if @second_trinket
      str = "@second_trinket.trinket_two.#{type}_#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.trinket_three_stat(astromon, type, stat)
    @third_trinket = Astromon.find_third_trinket(astromon)
    if @third_trinket
      str = "@third_trinket.trinket_three.#{type}_#{stat}"
      instance_eval str
    else
      0
    end
  end

  def self.flat(astromon)
    if astromon.first_gem
      astromon.first_gem.msl_gem.gem_category.flat ? "" : "%"
    end
  end

  def self.final_stat(astromon, stat, stat_sum, gem_sum)
    if astromon.first_gem == nil
      0
    elsif !astromon.first_gem.msl_gem.gem_category.flat
      (stat * (stat_sum + gem_sum) / 100).to_i
    else
      ((stat * stat_sum / 100) + gem_sum).to_i
    end
  end
end
