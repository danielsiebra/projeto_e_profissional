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

ActiveRecord::Schema.define(version: 20161108173654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas_profissionais", force: :cascade do |t|
    t.string   "area"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "ativo",      default: true
  end

  create_table "avaliacoes_servicos", force: :cascade do |t|
    t.text     "comentario"
    t.string   "papel"
    t.integer  "avaliacao"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "ativo",           default: true
    t.integer  "servico_id"
    t.integer  "profissional_id"
  end

  create_table "buscas_profissionais", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "pesquisa"
    t.integer  "profissional_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "ativo",      default: true
  end

  create_table "modeis", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "modeis", ["email"], name: "index_modeis_on_email", unique: true, using: :btree
  add_index "modeis", ["reset_password_token"], name: "index_modeis_on_reset_password_token", unique: true, using: :btree

  create_table "profissionais", force: :cascade do |t|
    t.integer  "areas_profissional_id"
    t.integer  "profissoes_profissional_id"
    t.string   "nome_completo"
    t.string   "nome_comercial"
    t.string   "whatsapp"
    t.string   "celular"
    t.string   "email"
    t.text     "endereco"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "ativo",                      default: true
    t.integer  "buscas_profissional_id"
    t.string   "cep"
    t.string   "rua"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "numero"
    t.string   "cidade"
    t.string   "estado"
  end

  add_index "profissionais", ["areas_profissional_id"], name: "index_profissionais_on_areas_profissional_id", using: :btree
  add_index "profissionais", ["profissoes_profissional_id"], name: "index_profissionais_on_profissoes_profissional_id", using: :btree

  create_table "profissionais_buscas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profissoes", force: :cascade do |t|
    t.integer  "areas_profissional_id"
    t.string   "profissao"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "ativo",                 default: true
  end

  add_index "profissoes", ["areas_profissional_id"], name: "index_profissoes_on_areas_profissional_id", using: :btree

  create_table "profissoes_buscas", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "registros_servicos_realizados", force: :cascade do |t|
    t.integer  "profissional_id"
    t.string   "titulo_servico"
    t.string   "nome_cliente"
    t.string   "email_cliente"
    t.text     "descricao_servico"
    t.string   "de"
    t.string   "ate"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "servico_id"
    t.boolean  "ativo",             default: true
  end

  add_index "registros_servicos_realizados", ["profissional_id"], name: "index_registros_servicos_realizados_on_profissional_id", using: :btree

  create_table "servicos", force: :cascade do |t|
    t.string   "preco"
    t.string   "prazo"
    t.string   "nome"
    t.integer  "profissional_id"
    t.integer  "registros_servicos_realizado_id"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "ativo",                           default: true
    t.text     "descricao"
  end

  add_index "servicos", ["profissional_id"], name: "index_servicos_on_profissional_id", using: :btree
  add_index "servicos", ["registros_servicos_realizado_id"], name: "index_servicos_on_registros_servicos_realizado_id", using: :btree

  create_table "solicitacoes_avaliacoes_servicos", force: :cascade do |t|
    t.string   "nome_cliente"
    t.string   "email"
    t.string   "papel"
    t.integer  "usuario_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "ativo",        default: true
  end

  add_index "solicitacoes_avaliacoes_servicos", ["usuario_id"], name: "index_solicitacoes_avaliacoes_servicos_on_usuario_id", using: :btree

  create_table "useres", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "useres", ["email"], name: "index_useres_on_email", unique: true, using: :btree
  add_index "useres", ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "email"
    t.string   "nome"
    t.string   "senha"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "ativo",      default: true
  end

  add_foreign_key "profissionais", "areas_profissionais"
  add_foreign_key "profissionais", "profissoes_profissionais"
  add_foreign_key "profissoes", "areas_profissionais"
  add_foreign_key "profissoes_profissionais", "areas_profissionais"
  add_foreign_key "profissoes_profissionais", "profissoes"
  add_foreign_key "registros_servicos_realizados", "profissionais"
  add_foreign_key "servicos", "profissionais"
  add_foreign_key "servicos", "registros_servicos_realizados"
  add_foreign_key "solicitacoes_avaliacoes_servicos", "usuarios"
end
