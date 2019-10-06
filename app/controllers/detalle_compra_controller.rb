class DetalleCompraController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @detalle_compras=DetalleCompra.all
  #@pagy, @compras= pagy(Compra.where(["num_fact LIKE ? OR proveedor_id LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"]), page: params[:page], items: 5)
end

def new
  @detalle_compra=DetalleCompra.new
  @detalle_compra.compra_id=params[:compra]

    if params[:compra]!=nil
      compra_id=params[:compra]
      @compra=Compra.find(compra_id)
      @compra_id=@detalle_compra.compra_id
    end
end

def create
  @detalle_compra=DetalleCompra.new
  @detalle_compra.cantidad=params[:detalle_compra][:cantidad]
  @detalle_compra.subtotal=params[:detalle_compra][:subtotal]
  @detalle_compra.compra_id=params[:detalle_compra][:compra_id]
  @detalle_compra.repuesto_servicio_id=params[:detalle_compra][:repuesto_servicio_id]
 
  if @detalle_compra.save
    redirect_to compra_index_path
  else
    render 'new'
  end
end

def edit
  id=params[:id]
  @detalle_compra=DetalleCompra.find(id)
end

def update
  id=params[:id]
  @detalle_compra=DetalleCompra.find(id)
  @detalle_compra.cantidad=params[:detalle_compra][:cantidad]
  @detalle_compra.subtotal=params[:detalle_compra][:subtotal]
  @detalle_compra.compra_id=params[:detalle_compra][:compra_id]
  @detalle_compra.repuesto_servicio_id=params[:detalle_compra][:repuesto_servicio_id]
  if @detalle_compra.save
    redirect_to compra_index_path
  else
    render 'new'
  end
end

def destroy
  id=params[:id]
  @detalle_compra=DetalleCompra.find(id)
  @detalle_compra.destroy
  redirect_to compra_index_path
end
end
