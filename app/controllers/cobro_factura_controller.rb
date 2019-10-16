class CobroFacturaController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @cobro_facturas=CobroFactura.all
end
  def new
    @cobro_factura=CobroFactura.new
  end

  def create
    @cobro_factura=CobroFactura.new
    @cobro_factura.cobro_monto=params[:cobro_factura][:cobro_monto]
    @cobro_factura.venta_id=params[:cobro_factura][:venta_id]

    if @cobro_factura.save
      redirect_to cobro_factura_show_path(@cobro_factura['id'])
    else
      render 'new'
    end
  end

  def show
    id=params[:id]
    @cobro_factura=CobroFactura.find(id)
  end
  def edit
    id=params[:id]
    @cobro_factura=CobroFactura.find(id)
  end

  def update
    id=params[:id]
    @cobro_factura=CobroFactura.find(id)
    @cobro_factura.cobro_monto=params[:cobro_factura][:cobro_monto]
    @cobro_factura.venta_id=params[:cobro_factura][:venta_id]

    if @cobro_factura.save
      redirect_to cobro_factura_index_path
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @cobro_factura=CobroFactura.find(id)
    @cobro_factura.destroy
    redirect_to cobro_factura_index_path
  end
end
