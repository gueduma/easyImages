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

ActiveRecord::Schema.define(version: 20170524050805) do

  create_table "galeria", force: :cascade do |t|
    t.string   "nome"
    t.bigint   "id_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imagems", force: :cascade do |t|
    t.string   "nome"
    t.string   "url"
    t.float    "tamanho"
    t.bigint   "id_usuario",                 null: false
    t.boolean  "publico",    default: false
    t.string   "extensao"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "galerias"
    t.bigint   "id_galeria"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
