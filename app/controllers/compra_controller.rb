class CompraController < ApplicationController
def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @compras=Compra.all
  #@pagy, @compras= pagy(Compra.where(["num_fact LIKE ? OR proveedor_id LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"]), page: params[:page], items: 5)
end

def new
  @compra=Compra.new
end

def create
  @compra=Compra.new
  @compra.fecha=params[:compra][:fecha]
  @compra.total_iva=params[:compra][:total_iva]
  @compra.total=params[:compra][:total]
  @compra.saldo=params[:compra][:saldo]
  @compra.proveedor_id=params[:compra][:proveedor_id]
  @compra.tipo_factura_id=params[:compra][:tipo_factura_id]
  @compra.num_fact=params[:compra][:num_fact]
  @compra.estado=params[:compra][:estado]
  
  if @compra.save
    redirect_to compra_index_path
  else
    render 'new'
  end
end

def edit
  id=params[:id]
  @compra=Compra.find(id)
end

def update
  id=params[:id]
  @compra=Compra.find(id)
  @compra.fecha=params[:compra][:fecha]
  @compra.total_iva=params[:compra][:total_iva]
  @compra.total=params[:compra][:total]
  @compra.saldo=params[:compra][:saldo]
  @compra.proveedor_id=params[:compra][:proveedor_id]
  @compra.tipo_factura_id=params[:compra][:tipo_factura_id]
  @compra.num_fact=params[:compra][:num_fact]
  @compra.estado=params[:compra][:estado]
  if @compra.save
    redirect_to compra_index_path
  else
    render 'new'
  end
end

def destroy
  id=params[:id]
  @compra=Compra.find(id)
  @compra.destroy
  redirect_to compra_index_path
end
end
