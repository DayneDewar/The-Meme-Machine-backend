# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_26_151615) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "meme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meme_id"], name: "index_favorites_on_meme_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "memes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "image"
    t.string "top"
    t.string "bottom"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_memes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "memes"
  add_foreign_key "favorites", "users"
  add_foreign_key "memes", "users"
end
