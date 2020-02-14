class SecondTrinketsController < ApplicationController
  before_action :find_astromon

  def new
    @second_trinket = SecondTrinket.new
    @second_trinkets = TrinketTwo.where(user_id: current_user.id)
  end

  def create
    @second_trinket = SecondTrinket.new(
      astromon_id: params[:astromon_id],
      trinket_two_id: params[:trinket]
    )
    if @second_trinket.save
      find_trinket
      @trinket_two.available = false
      @trinket_two.save
      redirect_to astromons_path
    else
      redirect_to new_astromon_second_trinket_path(@astromon)
    end
  end

  def destroy
    @second_trinket = SecondTrinket.find_by(astromon_id: params[:astromon_id])
    find_trinket
    @trinket_two.available = true
    @trinket_two.save
    @second_trinket.destroy
    redirect_to astromons_path
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end

  def find_trinket
    @trinket_two = @second_trinket.trinket_two
  end
end
