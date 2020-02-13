class TrinketOnesController < ApplicationController
  def new
    @trinket_one = TrinketOne.new
  end

  def create
    @trinket_one = TrinketOne.new(trinket_one_params)
    @trinket_one.user = current_user
    if @trinket_one.save
      redirect_to trinkets_path
    else
      render :new
    end
  end

  def destroy
<<<<<<< HEAD
    @trinket_one = TrinketOne.find(params[:id])
    if @trinket_one.available == false
    else
      @trinket_one.destroy
      @trinket_one.save
    end
    redirect_to trinkets_path
=======

>>>>>>> 82b0e8d2cff78dcdcabbff9a2d2a89e3a48f7427
  end

  private

  def trinket_one_params
    params.require(:trinket_one).permit(:m_hp, :s_defence, :s_recovery, :s_crit_res)
  end
end
