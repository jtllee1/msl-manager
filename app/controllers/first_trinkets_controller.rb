class FirstTrinketsController < ApplicationController
  before_action :find_astromon

  def new
    @first_trinket = FirstTrinket.new
    @first_trinkets = TrinketOne.where(user_id: current_user.id)
  end

  def create
    @first_trinket = FirstTrinket.new(
      astromon_id: params[:astromon_id]
    )
    if @first_trinket.save
      find_trinket
<<<<<<< HEAD
      @trinket_one.available = false
      @trinket_one.save
=======
      @trinket_1.available = false
      @trinket_1.save
>>>>>>> 82b0e8d2cff78dcdcabbff9a2d2a89e3a48f7427
      redirect_to astromons_path
    else
      redirect_to new_astromon_first_trinket_path(@astromon)
    end
  end

  def destroy
    @first_trinket = FirstTrinket.find_by(astromon_id: params[:astromon_id])
    @first_trinket.destroy
    find_trinket
    @trinket_1.available = true
    @trinket_1.save
    redirect_to astromons_path
  end

  private

  def find_astromon
    @astromon = Astromon.find(params[:astromon_id])
  end

  def find_trinket
<<<<<<< HEAD
    @trinket_one = @first_trinket.trinket_one
=======
    @trinket_1 = @first_trinket.trinket_1
>>>>>>> 82b0e8d2cff78dcdcabbff9a2d2a89e3a48f7427
  end
end
