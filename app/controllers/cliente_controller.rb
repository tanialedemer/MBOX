class ClienteController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @clientes=Cliente.all
end

def new
  @cliente=Cliente.new
end

def create
  @cliente=Cliente.new
  @cliente.nombre=params[:cliente][:nombre]
  @cliente.apellido=params[:cliente][:apellido]
  @cliente.direccion=params[:cliente][:direccion]
  @cliente.telefono=params[:cliente][:telefono]
  @cliente.email=params[:cliente][:email]
  @cliente.documento=params[:cliente][:documento]
  @cliente.ruc=params[:cliente][:ruc]
  if @cliente.save
    redirect_to cliente_show_path(@cliente['id'])
  else
    render 'new'
  end
end
def show
  id=params[:id]
  @cliente=Cliente.find(id)
end
def edit
  id=params[:id]
  @cliente=Cliente.find(id)
end

def update
  id=params[:id]
  @cliente=Cliente.find(id)
  @cliente.nombre=params[:cliente][:nombre]
  @cliente.apellido=params[:cliente][:apellido]
  @cliente.direccion=params[:cliente][:direccion]
  @cliente.telefono=params[:cliente][:telefono]
  @cliente.email=params[:cliente][:email]
  @cliente.documento=params[:cliente][:documento]
  @cliente.ruc=params[:cliente][:ruc]
  
  if @cliente.save
    redirect_to cliente_index_path
  else
    render 'edit'
  end
end

def destroy
  id=params[:id]
  @cliente=Cliente.find(id)
  @cliente.destroy
  redirect_to cliente_index_path
end
end
