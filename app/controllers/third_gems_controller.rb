class ThirdGemsController < ApplicationController
  before_action :find_astromon

  def new
    @third_gem = ThirdGem.new
    @third_gems = MslGem.where(gem_shape: @astromon.third_gem_shape)
  end

  def create
    @third_gem = ThirdGem.new(
      astromon_id: params[:astromon_id],
      msl_gem_id: params[:msl_gem]
    )
    if @third_gem.save
      redirect_to dashboard_path
    else
      redirect_to new_astromon_third_gem_path(@astromon)
    end
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end
end
