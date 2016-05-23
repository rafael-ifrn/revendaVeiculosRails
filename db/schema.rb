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

ActiveRecord::Schema.define(version: 20160522231322) do

  create_table "fabricantes", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forma_pagamentos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modelos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "fabricante_id"
    t.integer  "tipo_veiculo_id"
  end

  add_index "modelos", ["fabricante_id"], name: "index_modelos_on_fabricante_id"
  add_index "modelos", ["tipo_veiculo_id"], name: "index_modelos_on_tipo_veiculo_id"

  create_table "parte_pagamentos", force: :cascade do |t|
    t.decimal  "quantia"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "forma_pagamento_id"
  end

  add_index "parte_pagamentos", ["forma_pagamento_id"], name: "index_parte_pagamentos_on_forma_pagamento_id"

  create_table "tipo_veiculos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "email"
    t.string   "login"
    t.boolean  "ativo"
    t.boolean  "gerente"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "usuarios", ["cpf"], name: "index_usuarios_on_cpf", unique: true
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["login"], name: "index_usuarios_on_login", unique: true

end
