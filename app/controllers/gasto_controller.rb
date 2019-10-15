class GastoController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @gastos=Gasto.all
  end

  def new
  @gasto=Gasto.new
  end

  def create
  @gasto=Gasto.new
  @gasto.fecha_compra=params[:gasto][:fecha_compra]
  @gasto.motivo=params[:gasto][:motivo]
  @gasto.descripcion=params[:gasto][:descripcion]
  @gasto.costo=params[:gasto][:costo]


  if @gasto.save
    redirect_to gasto_show_path(@gasto['id'])
  else
    render 'new'
  end
  end
  def show
  id=params[:id]
  @gasto=Gasto.find(id)
  end
  def edit
  id=params[:id]
  @gasto=Gasto.find(id)
  end

  def update
  id=params[:id]
  @gasto=Gasto.find(id)
  @gasto.fecha_compra=params[:gasto][:fecha_compra]
  @gasto.motivo=params[:gasto][:motivo]
  @gasto.descripcion=params[:gasto][:descripcion]
  @gasto.costo=params[:gasto][:costo]

  if @gasto.save
    redirect_to gasto_index_path
  else
    render 'edit'
  end
  end

  def destroy
  id=params[:id]
  @gasto=Gasto.find(id)
  @gasto.destroy
  redirect_to gasto_index_path
  end
end
