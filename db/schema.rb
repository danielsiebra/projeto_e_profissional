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

ActiveRecord::Schema.define(version: 20161014180352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas_profissionais", force: :cascade do |t|
    t.string   "area"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "ativo",      default: true
  end

  create_table "buscas_profissionais", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "pesquisa"
  end

  create_table "profissionais", force: :cascade do |t|
    t.integer  "areas_profissional_id"
    t.integer  "profissoes_profissional_id"
    t.string   "nome_completo"
    t.string   "nome_comercial"
    t.integer  "whatsapp"
    t.integer  "celular"
    t.string   "email"
    t.text     "endereco"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "ativo",                      default: true
  end

  add_index "profissionais", ["areas_profissional_id"], name: "index_profissionais_on_areas_profissional_id", using: :btree
  add_index "profissionais", ["profissoes_profissional_id"], name: "index_profissionais_on_profissoes_profissional_id", using: :btree

  create_table "profissoes", force: :cascade do |t|
    t.integer  "areas_profissional_id"
    t.string   "profissao"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "ativo",                 default: true
  end

  add_index "profissoes", ["areas_profissional_id"], name: "index_profissoes_on_areas_profissional_id", using: :btree

  create_table "profissoes_profissionais", force: :cascade do |t|
    t.integer  "areas_profissional_id"
    t.integer  "profissao_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "profissional_id"
    t.boolean  "ativo",                 default: true
  end

  add_index "profissoes_profissionais", ["areas_profissional_id"], name: "index_profissoes_profissionais_on_areas_profissional_id", using: :btree
  add_index "profissoes_profissionais", ["profissao_id"], name: "index_profissoes_profissionais_on_profissao_id", using: :btree

  add_foreign_key "profissionais", "areas_profissionais"
  add_foreign_key "profissionais", "profissoes_profissionais"
  add_foreign_key "profissoes", "areas_profissionais"
  add_foreign_key "profissoes_profissionais", "areas_profissionais"
  add_foreign_key "profissoes_profissionais", "profissoes"
end
