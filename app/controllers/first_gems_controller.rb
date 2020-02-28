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
      find_msl_gem
      @msl_gem.available = false
      @msl_gem.save
      redirect_to astromons_path
    else
      redirect_to new_astromon_first_gem_path(@astromon)
    end
  end

  def destroy
    @first_gem = FirstGem.find_by(astromon_id: params[:astromon_id])
    @first_gem.destroy
    find_msl_gem
    @msl_gem.available = true
    @msl_gem.save
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end

  def find_msl_gem
    @msl_gem = @first_gem.msl_gem
  end
end
