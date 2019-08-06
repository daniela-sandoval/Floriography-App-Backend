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

ActiveRecord::Schema.define(version: 2019_08_06_190821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjectives", force: :cascade do |t|
    t.string "name"
    t.bigint "tone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tone_id"], name: "index_adjectives_on_tone_id"
  end

  create_table "bouquet_flowers", force: :cascade do |t|
    t.bigint "bouquet_id"
    t.bigint "flower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bouquet_id"], name: "index_bouquet_flowers_on_bouquet_id"
    t.index ["flower_id"], name: "index_bouquet_flowers_on_flower_id"
  end

  create_table "bouquets", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bouquets_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "bouquet_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bouquet_id"], name: "index_favorites_on_bouquet_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "flowers", force: :cascade do |t|
    t.string "name"
    t.string "meaning"
    t.string "img_url"
    t.bigint "adjective_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjective_id"], name: "index_flowers_on_adjective_id"
  end

  create_table "tones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adjectives", "tones"
  add_foreign_key "bouquet_flowers", "bouquets"
  add_foreign_key "bouquet_flowers", "flowers"
  add_foreign_key "bouquets", "users"
  add_foreign_key "favorites", "bouquets"
  add_foreign_key "favorites", "users"
  add_foreign_key "flowers", "adjectives"
end
