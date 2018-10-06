# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181006140907) do

  create_table "areas_conocimientos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caracters", force: :cascade do |t|
    t.string "caracter_institucion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ciudads", force: :cascade do |t|
    t.string "nombre"
    t.integer "departamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_ciudads_on_departamento_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jornadas", force: :cascade do |t|
    t.string "jornada"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modalidads", force: :cascade do |t|
    t.string "modalidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivels", force: :cascade do |t|
    t.string "nivel_formacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nucleos_basicos_conocimientos", force: :cascade do |t|
    t.string "nucleo_basico_conocimiento"
    t.integer "areas_conocimiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["areas_conocimiento_id"], name: "index_nucleos_basicos_conocimientos_on_areas_conocimiento_id"
  end

  create_table "programas", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo_snies"
    t.float "costos"
    t.integer "numero_semestres"
    t.string "correo_contacto"
    t.integer "universidad_id"
    t.integer "sede_id"
    t.integer "nucleos_basicos_conocimiento_id"
    t.integer "nivel_id"
    t.integer "modalidad_id"
    t.integer "jornada_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jornada_id"], name: "index_programas_on_jornada_id"
    t.index ["modalidad_id"], name: "index_programas_on_modalidad_id"
    t.index ["nivel_id"], name: "index_programas_on_nivel_id"
    t.index ["nucleos_basicos_conocimiento_id"], name: "index_programas_on_nucleos_basicos_conocimiento_id"
    t.index ["sede_id"], name: "index_programas_on_sede_id"
    t.index ["universidad_id"], name: "index_programas_on_universidad_id"
  end

  create_table "sedes", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "universidad_id"
    t.integer "ciudad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ciudad_id"], name: "index_sedes_on_ciudad_id"
    t.index ["universidad_id"], name: "index_sedes_on_universidad_id"
  end

  create_table "universidads", force: :cascade do |t|
    t.string "nombre"
    t.integer "ciudad_id"
    t.boolean "acreditacion_institucional"
    t.integer "caracter_id"
    t.string "direccion"
    t.text "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caracter_id"], name: "index_universidads_on_caracter_id"
    t.index ["ciudad_id"], name: "index_universidads_on_ciudad_id"
  end

end
