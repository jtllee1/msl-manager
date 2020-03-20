class SpeciesController < ApplicationController
  def index
    @species = Specie.order(:id).paginate(page: params[:page], per_page: 100)
    if params[:query].present?
      sql_query = "name ILIKE :query OR element ILIKE :query"
      @species = Specie.where(sql_query, query: "%#{params[:query]}%").order(:id).paginate(page: params[:page], per_page: 100)
    end
    if params[:element].present?
      @species = @species.where(element: params[:element])
    end
  end
end
