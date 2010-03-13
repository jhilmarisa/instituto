# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20071215185614) do

  create_table "especialidades", :force => true do |t|
    t.string   "nombre_especialidad"
    t.decimal  "costo_matricula",     :precision => 8, :scale => 2
    t.decimal  "costo_modulo",        :precision => 8, :scale => 2
    t.string   "duracion_modulo"
    t.integer  "cantidad_modulos"
    t.integer  "cupo_max"
    t.integer  "cupo_min"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estudiantes", :force => true do |t|

    t.string   "nombre_usuario"
    t.string   "password"
    t.string   "nombre"
    t.string   "a_paterno"
    t.string   "a_materno"
    t.string   "ci"
    t.string   "correo"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horarios", :force => true do |t|
    t.string   "nombre_especialidad"
    t.string   "dias"
    t.string   "horas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservas", :force => true do |t|
    t.string   "nombre_especialidad"
    t.string   "r_nombre"
    t.string   "r_a_paterno"
    t.string   "r_a_materno"
    t.string   "r_correo"
    t.string   "r_dia"
    t.string   "r_hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
