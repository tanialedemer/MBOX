class MecanicoController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @mecanicos=Mecanico.all
end

def new
  @mecanico=Mecanico.new
end

def create
  @mecanico=Mecanico.new
  @mecanico.especialidad=params[:mecanico][:especialidad]
  @mecanico.empleado_id=params[:mecanico][:empleado_id]

  if @mecanico.save
    redirect_to mecanico_show_path(@mecanico['id'])
  else
    render 'new'
  end
end
def show
  id=params[:id]
  @mecanico=Mecanico.find(id)
end
def edit
  id=params[:id]
  @mecanico=Mecanico.find(id)
end

def update
  id=params[:id]
  @mecanico=Mecanico.find(id)
  @mecanico.especialidad=params[:mecanico][:especialidad]
  @mecanico.empleado_id=params[:mecanico][:empleado_id]

  if @mecanico.save
    redirect_to mecanico_index_path
  else
    render 'edit'
  end
end

def destroy
  id=params[:id]
  @mecanico=Mecanico.find(id)
  @mecanico.destroy
  redirect_to mecanico_index_path
end
end
