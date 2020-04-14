class TrinketThreesController < ApplicationController
  def new
    @trinket_three = TrinketThree.new
  end

  def create
    @trinket_three = TrinketThree.new(trinket_three_params)
    @trinket_three.user = current_user
    if @trinket_three.save
      redirect_to trinkets_path
    else
      render :new
    end
  end

  def destroy
    @trinket_three = TrinketThree.find(params[:id])
    if @trinket_three.available == false
      flash.alert = "You cannot delete an equipped trinket!"
    else
      @trinket_three.destroy
      @trinket_three.save
    end
    redirect_to trinkets_path
  end

  private

  def trinket_three_params
    params.require(:trinket_three).permit(:m_crit_res, :s_defence, :s_attack, :s_hp)
  end
end
