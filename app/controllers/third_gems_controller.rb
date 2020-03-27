class ThirdGemsController < ApplicationController
  before_action :find_astromon

  def new
    @third_gem = ThirdGem.new
    @third_gems = MslGem.where(gem_shape: @astromon.third_gem_shape, user_id: current_user.id)
  end

  def create
    @third_gem = ThirdGem.new(
      astromon_id: params[:astromon_id],
      msl_gem_id: params[:msl_gem]
    )
    if @third_gem.save
      find_msl_gem
      @msl_gem.available = false
      @msl_gem.save
      redirect_to astromons_path
    else
      redirect_to new_astromon_third_gem_path(@astromon)
    end
  end

  def destroy
    @third_gem = ThirdGem.find_by(astromon_id: params[:astromon_id])
    @third_gem.destroy
    find_msl_gem
    @msl_gem.available = true
    @msl_gem.save
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end

  def find_msl_gem
    @msl_gem = @third_gem.msl_gem
  end
end
