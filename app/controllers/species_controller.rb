class SpeciesController < ApplicationController
  def index
    @species = Specie.all
  end
end
