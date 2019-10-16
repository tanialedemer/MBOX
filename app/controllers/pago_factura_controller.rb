class PagoFacturaController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @pago_facturas=PagoFactura.all
end
  def new
    @pago_factura=PagoFactura.new
  end

  def create
    @pago_factura=PagoFactura.new
    @pago_factura.monto_pago=params[:pago_factura][:monto_pago]
    @pago_factura.compra_id=params[:pago_factura][:compra_id]

    if @pago_factura.save
      redirect_to pago_factura_show_path(@pago_factura['id'])
    else
      render 'new'
    end
  end

  def show
    id=params[:id]
    @pago_factura=PagoFactura.find(id)
  end
  def edit
    id=params[:id]
    @pago_factura=PagoFactura.find(id)
  end

  def update
    id=params[:id]
    @pago_factura=PagoFactura.find(id)
    @pago_factura.monto_pago=params[:pago_factura][:monto_pago]
    @pago_factura.compra_id=params[:pago_factura][:compra_id]

    if @pago_factura.save
      redirect_to pago_factura_index_path
    else
      render 'edit'
    end
  end

  def destroy
    id=params[:id]
    @pago_factura=PagoFactura.find(id)
    @pago_factura.destroy
    redirect_to pago_factura_index_path
  end
end
