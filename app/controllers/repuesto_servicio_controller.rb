class RepuestoServicioController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  # @proveedores=Proveedor.all
  @pagy, @repuesto_servicios= pagy(RepuestoServicio.where(["descripcion LIKE ? OR codigo LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"]), page: params[:page], items: 5)

end

def new
  @repuesto_servicio=RepuestoServicio.new
end

def create
  @repuesto_servicio=RepuestoServicio.new
  @repuesto_servicio.codigo=params[:repuesto_servicio][:codigo]
  @repuesto_servicio.descripcion=params[:repuesto_servicio][:descripcion]
  @repuesto_servicio.stock=params[:repuesto_servicio][:stock]
  @repuesto_servicio.costo=params[:repuesto_servicio][:costo]
  @repuesto_servicio.precio_venta=params[:repuesto_servicio][:precio_venta]
  @repuesto_servicio.categoria=params[:repuesto_servicio][:categoria]
  if @repuesto_servicio.save
    redirect_to repuesto_servicio_index_path
  else
    render 'new'
  end
end

def edit
  id=params[:id]
  @repuesto_servicio=RepuestoServicio.find(id)
end

def update
  id=params[:id]
  @proveedor=RepuestoServicio.find(id)
  @repuesto_servicio.codigo=params[:repuesto_servicio][:codigo]
  @repuesto_servicio.descripcion=params[:repuesto_servicio][:descripcion]
  @repuesto_servicio.stock=params[:repuesto_servicio][:stock]
  @repuesto_servicio.costo=params[:repuesto_servicio][:costo]
  @repuesto_servicio.precio_venta=params[:repuesto_servicio][:precio_venta]
  @repuesto_servicio.categoria=params[:repuesto_servicio][:categoria]
  if @repuesto_servicio.save
    redirect_to repuesto_servicio_index_path
  else
    render 'new'
  end
end

def destroy
  id=params[:id]
  @repuesto_servicio=RepuestoServicio.find(id)
  @repuesto_servicio.destroy
  redirect_to repuesto_servicio_index_path
end
end
