class TrinketsController < ApplicationController
  def index
    if params[:trinket] == "trinket_one"
      @trinket_ones = TrinketOne.where(user_id: current_user.id)
      @trinket_twos = []
      @trinket_threes = []
    elsif params[:trinket] == "trinket_two"
      @trinket_ones = []
      @trinket_twos = TrinketTwo.where(user_id: current_user.id)
      @trinket_threes = []
    elsif params[:trinket] == "trinket_three"
      @trinket_ones = []
      @trinket_twos = []
      @trinket_threes = TrinketThree.where(user_id: current_user.id)
    else
      @trinket_ones = TrinketOne.where(user_id: current_user.id)
      @trinket_twos = TrinketTwo.where(user_id: current_user.id)
      @trinket_threes = TrinketThree.where(user_id: current_user.id)
    end
  end
end
