class VehiculoController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @vehiculos=Vehiculo.all
end

def new
  @vehiculo=Vehiculo.new
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
  @vehiculo.descripcion=params[:vehiculo][:descripcion]
  @vehiculo.modelo=params[:vehiculo][:modelo]
  @vehiculo.color=params[:vehiculo][:color]
  @vehiculo.matricula=params[:vehiculo][:matricula]
  @vehiculo.marca=params[:vehiculo][:marca]
  @vehiculo.km=params[:vehiculo][:km]
  @vehiculo.chasis=params[:vehiculo][:chasis]
  if @cliente.save
    redirect_to cvehiculo_index_path
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
