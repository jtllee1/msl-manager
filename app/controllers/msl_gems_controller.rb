class MslGemsController < ApplicationController
  def index
    msl_gem_index
    if params[:shape].present?
      @msl_gems = @msl_gems.where(gem_shape: params[:shape])
    end
    if params[:stat].present?
      stat = params[:stat].to_sym
      @msl_gems = @msl_gems.where.not(stat => 0)
    end
  end

  def new
    @msl_gem = MslGem.new
  end

  def create
    @msl_gem = MslGem.new(msl_gem_params)
    @msl_gem.user = current_user
    if @msl_gem.save
      redirect_to msl_gems_path
    else
      render :new
    end
  end

  def destroy
    @first_gem = FirstGem.where(msl_gem_id: params[:id])
    @second_gem = SecondGem.where(msl_gem_id: params[:id])
    @third_gem = ThirdGem.where(msl_gem_id: params[:id])
    msl_gem_index
    find_msl_gem
    if @first_gem != [] || @second_gem != [] || @third_gem != []
    else
      @msl_gem.destroy
      @msl_gem.save
    end
    redirect_to msl_gems_path
  end

  private

  def msl_gem_params
    params.require(:msl_gem).permit(:gem_shape, :gem_category_id, :m_hp, :m_attack, :m_defence, :m_recovery, :m_crit_dmg, :m_crit_rate, :m_resist, :s_hp, :s_attack, :s_defence, :s_recovery, :s_crit_dmg, :s_crit_rate, :s_resist)
  end

  def msl_gem_index
    @msl_gems = MslGem.where(user_id: current_user.id)
  end

  def find_msl_gem
    @msl_gem = @msl_gems.find(params[:id])
  end
end
