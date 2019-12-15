class SecondGemsController < ApplicationController
  before_action :find_astromon

  def new
    @second_gem = SecondGem.new
    @second_gems = MslGem.where(gem_shape: @astromon.second_gem_shape)
  end

  def create
    @second_gem = SecondGem.new(
      astromon_id: params[:astromon_id],
      msl_gem_id: params[:msl_gem]
    )
    if @second_gem.save
      redirect_to dashboard_path
    else
      redirect_to new_astromon_second_gem_path(@astromon)
    end
  end

  def destroy
    @second_gem = SecondGem.find_by(astromon_id: params[:astromon_id])
    @second_gem.destroy
    redirect_to dashboard_path
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end
end
