class TrinketsController < ApplicationController
  def index
    @trinket_ones = TrinketOne.where(user_id: current_user.id)
    @trinket_twos = TrinketTwo.where(user_id: current_user.id)
    @trinket_threes = TrinketThree.where(user_id: current_user.id)
  end
end
