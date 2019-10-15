class EmpleadoController < ApplicationController
  def index
  # @proveedores=Proveedor.where(["nombre LIKE ? OR ruc LIKE ?","%#{params[:search]}%", "%#{params[:search]}%"])
  @empleados=Empleado.all
  end

  def new
  @empleado=Empleado.new
  end

  def create
  @empleado=Empleado.new
  @empleado.nombre=params[:empleado][:nombre]
  @empleado.apellido=params[:empleado][:apellido]
  @empleado.direccion=params[:empleado][:direccion]
  @empleado.telefono=params[:empleado][:telefono]
  @empleado.fecha_nac=params[:empleado][:fecha_nac]
  @empleado.documento=params[:empleado][:documento]
  @empleado.especialidad=params[:empleado][:especialidad]
  @empleado.fecha_contratacion=params[:empleado][:fecha_contratacion]
  @empleado.salario=params[:empleado][:salario]


  if @empleado.save
    redirect_to empleado_show_path(@empleado['id'])
  else
    render 'new'
  end
  end
  def show
  id=params[:id]
  @empleado=Empleado.find(id)
  end
  def edit
  id=params[:id]
  @empleado=Empleado.find(id)
  end

  def update
  id=params[:id]
  @empleado=Empleado.find(id)
  @empleado.nombre=params[:empleado][:nombre]
  @empleado.apellido=params[:empleado][:apellido]
  @empleado.direccion=params[:empleado][:direccion]
  @empleado.telefono=params[:empleado][:telefono]
  @empleado.fecha_nac=params[:empleado][:fecha_nac]
  @empleado.documento=params[:empleado][:documento]
  @empleado.especialidad=params[:empleado][:especialidad]
  @empleado.fecha_contratacion=params[:empleado][:fecha_contratacion]
  @empleado.salario=params[:empleado][:salario]

  if @empleado.save
    redirect_to empleado_index_path
  else
    render 'edit'
  end
  end

  def destroy
  id=params[:id]
  @empleado=Empleado.find(id)
  @empleado.destroy
  redirect_to empleado_index_path
  end
end
