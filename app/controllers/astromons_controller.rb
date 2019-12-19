class AstromonsController < ApplicationController
  def index
    @astromons = Astromon.where(user_id: current_user.id)
  end

  def new
    @astromon = Astromon.new
  end

  def create
    @astromon = Astromon.new(astromon_params)
    @astromon.user = current_user
    if @astromon.save
      redirect_to astromons_path
    else
      render :new
    end
  end

  private

  def astromon_params
    params.require(:astromon).permit(:specie_id, :first_gem_shape, :second_gem_shape, :third_gem_shape, :variant_level)
  end
end
