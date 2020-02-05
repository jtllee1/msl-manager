class SpeciesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR element ILIKE :query"
      @species = Specie.where(sql_query, query: "%#{params[:query]}%").order(:id).paginate(page: params[:page], per_page: 30)
    else
      @species = Specie.order(:id).paginate(page: params[:page], per_page: 30)
    end
  end
end
