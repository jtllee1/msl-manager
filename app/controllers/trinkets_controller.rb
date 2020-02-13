class TrinketsController < ApplicationController
  def index
    @trinket_ones = TrinketOne.where(user_id: current_user.id)
  end
end
