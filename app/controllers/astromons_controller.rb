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
    if @astromon.first_trinket
      @astromon.first_trinket.trinket_one.available = true
      @astromon.first_trinket.trinket_one.save
      @astromon.first_trinket.destroy
    end
    if @astromon.second_trinket
      @astromon.second_trinket.trinket_two.available = true
      @astromon.second_trinket.trinket_two.save
      @astromon.second_trinket.destroy
    end
    if @astromon.third_trinket
      @astromon.third_trinket.trinket_three.available = true
      @astromon.third_trinket.trinket_three.save
      @astromon.third_trinket.destroy
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
