# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_15_221156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.text "direccion"
    t.string "telefono"
    t.string "email"
    t.string "documento"
    t.integer "ruc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "compras", force: :cascade do |t|
    t.date "fecha"
    t.float "total_iva"
    t.float "total"
    t.float "saldo"
    t.integer "proveedor_id"
    t.integer "tipo_factura_id"
    t.integer "num_fact"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "detalle_compras", force: :cascade do |t|
    t.integer "cantidad"
    t.float "subtotal"
    t.integer "compra_id"
    t.integer "repuesto_servicio_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.date "fecha_nac"
    t.string "documento"
    t.string "telefono"
    t.string "especialidad"
    t.string "direccion"
    t.date "fecha_contratacion"
    t.float "salario"
    t.integer "usuario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcions", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gastos", force: :cascade do |t|
    t.date "fecha_compra"
    t.string "motivo"
    t.string "descripcion"
    t.float "costo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mecanicos", force: :cascade do |t|
    t.string "especialidad"
    t.integer "empleado_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.text "direccion"
    t.string "telefono"
    t.string "email"
    t.string "documento"
    t.integer "ruc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "repuesto_servicios", force: :cascade do |t|
    t.string "descripcion"
    t.integer "stock"
    t.float "costo"
    t.float "precio_venta"
    t.string "categoria"
    t.string "codigo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_facturas", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string "tipo"
    t.string "modelo"
    t.string "color"
    t.string "matricula"
    t.string "marca"
    t.float "km"
    t.string "chasis"
    t.integer "cliente_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "año"
  end

end
