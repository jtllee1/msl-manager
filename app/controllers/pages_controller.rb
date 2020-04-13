class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :guest]

  def home
  end

  def guest
    @guest = User.new(
      email: "guest_#{Time.now.to_i}#{rand(100)}",
      guest: true,
    )
    @guest.save!(validate: false)
    sign_in(@guest)
    @specie = Specie.all.first
    @astromon = Astromon.new(
      specie_id: @specie.id,
      first_gem_shape: "Square",
      second_gem_shape: "Triangle",
      third_gem_shape: "Diamond",
      user_id: current_user.id
      )
    @astromon.save!
    @gem_category = GemCategory.all.first
    @gem = MslGem.new(
      gem_shape: "Square",
      gem_category_id: @gem_category.id,
      user_id: current_user.id,
      m_crit_rate: 54,
      s_attack: rand(5..20),
      s_defence: rand(5..20),
      s_hp: rand(5..20),
      s_crit_dmg: rand(5..20)
      )
    @gem.save!
    @gem = MslGem.new(
      gem_shape: "Triangle",
      gem_category_id: @gem_category.id,
      user_id: current_user.id,
      m_attack: rand(5..20),
      s_crit_rate: rand(5..20),
      s_defence: rand(5..20),
      s_hp: rand(5..20),
      s_crit_dmg: rand(5..20)
      )
    @gem.save!
    @gem = MslGem.new(
      gem_shape: "Diamond",
      gem_category_id: @gem_category.id,
      user_id: current_user.id,
      m_hp: 68,
      s_attack: rand(5..20),
      s_defence: rand(5..20),
      s_crit_rate: rand(5..20),
      s_crit_dmg: rand(5..20)
      )
    @gem.save!
    @gem_category = GemCategory.all.second
    @gem = MslGem.new(
      gem_shape: "Square",
      gem_category_id: @gem_category.id,
      user_id: current_user.id,
      m_crit_rate: 54,
      s_attack: rand(5..20),
      s_defence: rand(5..20),
      s_hp: rand(5..20),
      s_crit_dmg: rand(5..20)
      )
    @gem.save!
    @gem = MslGem.new(
      gem_shape: "Triangle",
      gem_category_id: @gem_category.id,
      user_id: current_user.id,
      m_attack: rand(5..20),
      s_crit_rate: rand(5..20),
      s_defence: rand(5..20),
      s_hp: rand(5..20),
      s_crit_dmg: rand(5..20)
      )
    @gem.save!
    @gem = MslGem.new(
      gem_shape: "Diamond",
      gem_category_id: @gem_category.id,
      user_id: current_user.id,
      m_hp: 68,
      s_attack: rand(5..20),
      s_defence: rand(5..20),
      s_crit_rate: rand(5..20),
      s_crit_dmg: rand(5..20)
      )
    @gem.save!
    @trinket_one = TrinketOne.new(
      user_id: current_user.id,
      m_hp: 4000,
      s_defence: 500,
      s_recovery: 500,
      s_crit_res: 15
      )
    @trinket_one.save!
    @trinket_two = TrinketTwo.new(
      user_id: current_user.id,
      m_attack: 1500,
      s_crit_dmg: 15,
      s_resist: 15,
      s_recovery: 500
      )
    @trinket_two.save!
    @trinket_three = TrinketThree.new(
      user_id: current_user.id,
      m_crit_res: 15,
      s_defence: 500,
      s_attack: 500,
      s_hp: 2000
      )
    @trinket_three.save!
    redirect_to astromons_path
  end
end
