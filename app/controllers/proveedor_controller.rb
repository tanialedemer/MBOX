class ProveedorController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  # @proveedores=Proveedor.all
  @pagy, @proveedores= pagy(Proveedor.where(["nombre LIKE ? OR documento LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"]), page: params[:page], items: 5)
  respond_to do |format|
    format.html
    format.json
    format.pdf { render template: 'proveedor/reporte', pdf: 'Reporte', layout: 'pdf.html'}
  end
end

def reporte
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  # @proveedores=Proveedor.all
  @pagy, @proveedores= pagy(Proveedor.where(["nombre LIKE ? OR documento LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"]), page: params[:page], items: 5)
  respond_to do |format|
    format.html
    format.json
    format.pdf { render template: 'proveedor/reporte', pdf: 'Reporte', layout: 'pdf.html'}
  end
end

def new
  @proveedor=Proveedor.new
end

def create
  @proveedor=Proveedor.new
  @proveedor.nombre=params[:proveedor][:nombre]
  @proveedor.direccion=params[:proveedor][:direccion]
  @proveedor.telefono=params[:proveedor][:telefono]
  @proveedor.email=params[:proveedor][:email]
  @proveedor.documento=params[:proveedor][:documento]
  @proveedor.ruc=params[:proveedor][:ruc]
  if @proveedor.save
    redirect_to proveedor_index_path
  else
    render 'new'
  end
end

def edit
  id=params[:id]
  @proveedor=Proveedor.find(id)
end

def update
  id=params[:id]
  @proveedor=Proveedor.find(id)
  @proveedor.nombre=params[:proveedor][:nombre]
  @proveedor.direccion=params[:proveedor][:direccion]
  @proveedor.telefono=params[:proveedor][:telefono]
  @proveedor.email=params[:proveedor][:email]
  @proveedor.documento=params[:proveedor][:documento]
  @proveedor.ruc=params[:proveedor][:ruc]
  if @proveedor.save
    redirect_to proveedor_index_path
  else
    render 'new'
  end
end

def destroy
  id=params[:id]
  @proveedor=Proveedor.find(id)
  @proveedor.destroy
  redirect_to proveedor_index_path
end
end
