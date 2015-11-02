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

ActiveRecord::Schema.define(version: 20151102165102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "confessions", force: :cascade do |t|
    t.integer  "transgression_id"
    t.datetime "occurred_at",      default: '2015-10-30 13:30:09', null: false
    t.string   "description",                                      null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "confessions", ["transgression_id"], name: "index_confessions_on_transgression_id", using: :btree

  create_table "transgressions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "description", null: false
    t.string   "sin_type",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "transgressions", ["sin_type"], name: "index_transgressions_on_sin_type", using: :btree
  add_index "transgressions", ["user_id"], name: "index_transgressions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "session_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  add_foreign_key "confessions", "transgressions"
  add_foreign_key "transgressions", "users"
end
