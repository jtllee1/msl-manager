class ThirdTrinketsController < ApplicationController
  before_action :find_astromon

  def new
    @third_trinket = ThirdTrinket.new
    @third_trinkets = TrinketThree.where(user_id: current_user.id)
  end

  def create
    @third_trinket = ThirdTrinket.new(
      astromon_id: params[:astromon_id],
      trinket_three_id: params[:trinket]
    )
    if @third_trinket.save
      find_trinket
      @trinket_three.available = false
      @trinket_three.save
      redirect_to astromons_path
    else
      redirect_to new_astromon_third_trinket_path(@astromon)
    end
  end

  def destroy
    @third_trinket = ThirdTrinket.find_by(astromon_id: params[:astromon_id])
    find_trinket
    @trinket_three.available = true
    @trinket_three.save
    @third_trinket.destroy
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end

  def find_trinket
    @trinket_three = @third_trinket.trinket_three
  end
end
