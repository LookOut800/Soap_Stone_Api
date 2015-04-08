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

ActiveRecord::Schema.define(version: 20150408135723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_objects", force: :cascade do |t|
    t.string   "period"
    t.string   "color"
    t.string   "feature_image"
    t.string   "thumbnail"
    t.string   "medium"
    t.string   "title"
    t.text     "description"
    t.integer  "timeline_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "art_objects", ["timeline_id"], name: "index_art_objects_on_timeline_id", using: :btree

  create_table "desks", force: :cascade do |t|
    t.string   "name"
    t.string   "timestamps"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "desks", ["user_id"], name: "index_desks_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "url"
    t.integer  "timeline_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "posts", ["timeline_id"], name: "index_posts_on_timeline_id", using: :btree

  create_table "timelines", force: :cascade do |t|
    t.integer  "desk_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "timelines", ["desk_id"], name: "index_timelines_on_desk_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "username"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "art_objects", "timelines"
  add_foreign_key "desks", "users"
  add_foreign_key "posts", "timelines"
  add_foreign_key "timelines", "desks"
end
