class TrinketTwosController < ApplicationController
  def new
    @trinket_two = TrinketTwo.new
  end

  def create
    @trinket_two = TrinketTwo.new(trinket_two_params)
    @trinket_two.user = current_user
    if @trinket_two.save
      redirect_to trinkets_path
    else
      render :new
    end
  end

  def destroy
    @trinket_two = TrinketTwo.find(params[:id])
    if @trinket_two.available == false
      flash.alert = "You cannot delete an equipped trinket!"
    else
      @trinket_two.destroy
      @trinket_two.save
    end
    redirect_to trinkets_path
  end

  private

  def trinket_two_params
    params.require(:trinket_two).permit(:m_attack, :s_crit_dmg, :s_resist, :s_recovery)
  end
end
