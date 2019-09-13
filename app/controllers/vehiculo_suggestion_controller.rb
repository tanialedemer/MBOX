class VehiculoSuggestionController < ApplicationController
  def index
    if params[:query].present?
			query = params[:query]
			condition = "unaccent(lower(matricula)) LIKE '%#{I18n.transliterate(query.downcase)}%'"
			@vehiculos = Vehiculo.where(condition)
		end
		@vehiculos ||= Vehiculo.none

		render json: @vehiculos
  end
end
