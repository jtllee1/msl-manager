class SpeciesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR element ILIKE :query OR"
      @species = Specie.where(sql_query, query: "%#{params[:query]}%")
    else
      @species = Specie.all
    end
  end
end
