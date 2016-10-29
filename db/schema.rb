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

ActiveRecord::Schema.define(version: 20161029191621) do

  create_table "implementos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "local_id"
    t.string   "nombre"
    t.string   "marca"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_implementos_on_local_id", using: :btree
  end

  create_table "locals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "usuario_a_id"
    t.string   "nombre"
    t.string   "foto"
    t.float    "calificacion", limit: 24
    t.text     "descripcion",  limit: 65535
    t.text     "horario",      limit: 65535
    t.text     "direccion",    limit: 65535
    t.float    "latitud",      limit: 24
    t.float    "longitud",     limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["usuario_a_id"], name: "index_locals_on_usuario_a_id", using: :btree
  end

  create_table "salas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "local_id"
    t.string   "nombre"
    t.text     "foto",        limit: 65535
    t.integer  "valor"
    t.text     "descripcion", limit: 65535
    t.text     "backline",    limit: 65535
    t.float    "largo",       limit: 24
    t.float    "ancho",       limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["local_id"], name: "index_salas_on_local_id", using: :btree
  end

  create_table "solicituds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "usuario_m_id"
    t.integer  "sala_id"
    t.integer  "implemento_id"
    t.string   "estado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["implemento_id"], name: "index_solicituds_on_implemento_id", using: :btree
    t.index ["sala_id"], name: "index_solicituds_on_sala_id", using: :btree
    t.index ["usuario_m_id"], name: "index_solicituds_on_usuario_m_id", using: :btree
  end

  create_table "usuario_as", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.string   "clave"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuario_ms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.string   "clave"
    t.float    "calificacion", limit: 24
    t.float    "rango",        limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "implementos", "locals"
  add_foreign_key "locals", "usuario_as"
  add_foreign_key "salas", "locals"
  add_foreign_key "solicituds", "implementos"
  add_foreign_key "solicituds", "salas"
  add_foreign_key "solicituds", "usuario_ms"
end
