class MslGemsController < ApplicationController
  def new
    @msl_gem = MslGem.new
  end

  def create
    @msl_gem = MslGem.new(msl_gem_params)
    @msl_gem.user = current_user
    if @msl_gem.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def msl_gem_params
    params.require(:msl_gem).permit(:gem_shape, :gem_category_id, :m_hp, :m_attack, :m_defence, :m_recovery, :m_crit_dmg, :m_crit_rate, :s_hp, :s_attack, :s_defence, :s_recovery, :s_crit_dmg, :s_crit_rate)
  end
end
