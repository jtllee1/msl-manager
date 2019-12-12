class AstromonsController < ApplicationController
  def new
    @astromon = Astromon.new
  end

  def create
  end

  private

  def astromon_params
  end
end
