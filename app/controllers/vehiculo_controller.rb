class VehiculoController < ApplicationController

   PAGE_SIZE = 10
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  # @vehiculos=Vehiculo.all
  @page = (params[:page] || 0).to_i
  @keywords = params[:keywords]

  search = Search.new(@page, PAGE_SIZE, @keywords)
  @vehiculos, @number_of_pages = search.vehiculos_by_matricula
end

def new
  @vehiculo=Vehiculo.new
  @vehiculo.cliente_id=params[:cliente]

    if params[:cliente]!=nil
      cliente_id=params[:cliente]
      @cliente=Cliente.find(cliente_id)
      @cliente_id=@vehiculo.cliente_id
    end
end

def create
  @vehiculo=Vehiculo.new
  @vehiculo.descripcion=params[:vehiculo][:descripcion]
  @vehiculo.modelo=params[:vehiculo][:modelo]
  @vehiculo.color=params[:vehiculo][:color]
  @vehiculo.matricula=params[:vehiculo][:matricula]
  @vehiculo.marca=params[:vehiculo][:marca]
  @vehiculo.km=params[:vehiculo][:km]
  @vehiculo.chasis=params[:vehiculo][:chasis]
  if @vehiculo.save
    redirect_to vehiculo_index_path
  else
    render 'new'
  end
end

def edit
  id=params[:id]
  @vehiculo=Vehiculo.find(id)
end

def update
  id=params[:id]
  @vehiculo=Vehiculo.find(id)
  @vehiculo.descripcion=params[:vehiculo][:descripcion]
  @vehiculo.modelo=params[:vehiculo][:modelo]
  @vehiculo.color=params[:vehiculo][:color]
  @vehiculo.matricula=params[:vehiculo][:matricula]
  @vehiculo.marca=params[:vehiculo][:marca]
  @vehiculo.km=params[:vehiculo][:km]
  @vehiculo.chasis=params[:vehiculo][:chasis]
  
  if @vehiculo.save
    redirect_to vehiculo_index_path
  else
    render 'new'
  end
end

def destroy
  id=params[:id]
  @vehiculo=Vehiculo.find(id)
  @vehiculo.destroy
  redirect_to vehiculo_index_path
end
end
