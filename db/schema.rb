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

ActiveRecord::Schema.define(version: 2018_06_10_205759) do

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.integer "matricula"
    t.string "email"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emprestimos", force: :cascade do |t|
    t.string "aluno_nome"
    t.string "matricula"
    t.string "livro_titulo"
    t.integer "codigo"
    t.date "data_emprestimo"
    t.date "data_devoluncao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "aluno_id"
    t.integer "livro_id"
    t.index ["aluno_id"], name: "index_emprestimos_on_aluno_id"
    t.index ["livro_id"], name: "index_emprestimos_on_livro_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.integer "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
