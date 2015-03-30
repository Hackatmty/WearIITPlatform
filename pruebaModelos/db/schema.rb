# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150322140815) do

  create_table "dispositivos", force: :cascade do |t|
    t.integer  "usuarios_id"
    t.string   "name"
    t.string   "marca"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dispositivos", ["usuarios_id"], name: "index_dispositivos_on_usuarios_id"

  create_table "lecturas_dia", force: :cascade do |t|
    t.integer  "lecturas_minuto_id"
    t.integer  "calorias"
    t.integer  "sueño"
    t.float    "distancia"
    t.integer  "pasos"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "lecturas_dia", ["lecturas_minuto_id"], name: "index_lecturas_dia_on_lecturas_minuto_id"

  create_table "lecturas_minutos", force: :cascade do |t|
    t.integer  "dispositivos_id"
    t.integer  "latidos"
    t.float    "distancia"
    t.integer  "pasos"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "lecturas_minutos", ["dispositivos_id"], name: "index_lecturas_minutos_on_dispositivos_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "name"
    t.date     "fechaNac"
    t.string   "genero"
    t.float    "peso"
    t.float    "altura"
    t.string   "password_digest"
    t.string   "email"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
