class SearchController < ApplicationController
  def create
  	palabra = params[:keyword]
  	@proveedores= Proveedor.where("nombre LIKE ? OR documento LIKE ?", palabra, palabra)

  	respond_to do |format|
  		format.html {redirect_to root_path}
  		format.json {render json: @proveedores}
      format.js

  end


  end
end
