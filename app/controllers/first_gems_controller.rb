class FirstGemsController < ApplicationController
  before_action :find_astromon

  def new
    @first_gem = FirstGem.new
    @first_gems = MslGem.where(gem_shape: @astromon.first_gem_shape)
  end

  def create
    @first_gem = FirstGem.new(
      astromon_id: params[:astromon_id],
      msl_gem_id: params[:msl_gem]
    )
    if @first_gem.save
      redirect_to dashboard_path
    else
      redirect_to new_astromon_first_gem_path(@astromon)
    end
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end
end
