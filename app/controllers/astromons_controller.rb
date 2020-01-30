class AstromonsController < ApplicationController
  def index
    @astromons = Astromon.where(user_id: current_user.id)
  end

  def new
    @astromon = Astromon.new
    @specie = Specie.find(params[:format])
  end

  def create
    @astromon = Astromon.new(astromon_params)
    @astromon.specie_id = params[:specie_id]
    @astromon.user = current_user
    if @astromon.save
      redirect_to astromons_path
    else
      render :new
    end
  end

  def destroy
    find_astromon
    if @astromon.first_gem
      @astromon.first_gem.msl_gem.available = true
      @astromon.first_gem.msl_gem.save
      @astromon.first_gem.destroy
    end
    if @astromon.second_gem
      @astromon.second_gem.msl_gem.available = true
      @astromon.second_gem.msl_gem.save
      @astromon.second_gem.destroy
    end
    if @astromon.third_gem
      @astromon.third_gem.msl_gem.available = true
      @astromon.third_gem.msl_gem.save
      @astromon.third_gem.destroy
    end
    @astromon.destroy
    redirect_to astromons_path
  end

  private

  def astromon_params
    params.require(:astromon).permit(:specie_id, :first_gem_shape, :second_gem_shape, :third_gem_shape, :variant_level)
  end

  def find_astromon
    @astromon = Astromon.find(params[:id])
  end
end
