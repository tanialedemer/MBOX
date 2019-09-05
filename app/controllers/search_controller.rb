class SearchController < ApplicationController
  def create
  	palabra = params[:keyword]
  	@proveedores= Proveedor.where("nombre LIKE ?", palabra)

  	respond_to do |format|
  		#format.html {redirect_to root_path}
  		format.json {render json: @proveedores}

  end


  end
end
