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

ActiveRecord::Schema.define(version: 2022_07_27_065559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "equipment_id"
  end

  create_table "equipments", force: :cascade do |t|
    t.text "bow"
    t.text "bow_type"
    t.text "bow_size"
    t.text "draw_length"
    t.text "draw_weight"
    t.text "string"
    t.text "arrow"
    t.text "arrow_length"
    t.text "arrow_spine"
    t.text "arrow_weight"
    t.text "tip_weight"
    t.text "fletching"
    t.text "nock"
    t.text "description"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
