class SpeciesController < ApplicationController
  def index
    @species = Specie.where(evo: 1)
  end
end
