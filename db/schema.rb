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

ActiveRecord::Schema.define(version: 20160412234711) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "nickname"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "game_id"
  end

  add_index "characters", ["game_id"], name: "index_characters_on_game_id"

  create_table "games", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "location_id"
    t.integer  "character_id"
  end

  add_index "items", ["character_id"], name: "index_items_on_character_id"
  add_index "items", ["location_id"], name: "index_items_on_location_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "game_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locations", ["game_id"], name: "index_locations_on_game_id"

  create_table "snippets", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "parent_id"
    t.integer  "location_id"
  end

  add_index "snippets", ["location_id"], name: "index_snippets_on_location_id"
  add_index "snippets", ["parent_id"], name: "index_snippets_on_parent_id"

  create_table "statistics", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.integer  "minimum"
    t.integer  "maximum"
    t.string   "unit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "describable_id"
    t.string   "describable_type"
  end

end
