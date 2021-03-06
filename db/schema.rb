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

ActiveRecord::Schema.define(version: 20160608232809) do

  create_table "assignments", force: :cascade do |t|
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "deadline"
  end

  create_table "bookmarks", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id",       limit: 4
    t.integer  "submission_id", limit: 4
  end

  create_table "comments", force: :cascade do |t|
    t.text     "comment",       limit: 65535
    t.integer  "submission_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "grade_comments", force: :cascade do |t|
    t.text     "comment",       limit: 65535
    t.integer  "submission_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "submission_id", limit: 4
    t.integer  "user_id",       limit: 4
    t.text     "comment",       limit: 65535
    t.float    "grade",         limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string   "var",        limit: 255,   null: false
    t.text     "value",      limit: 65535
    t.integer  "thing_id",   limit: 4
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true, using: :btree

  create_table "submissions", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "title",           limit: 255
    t.string   "name",            limit: 255
    t.float    "grade",           limit: 24
    t.text     "notecard",        limit: 65535
    t.string   "vocab_english_1", limit: 255
    t.string   "vocab_english_2", limit: 255
    t.string   "vocab_english_3", limit: 255
    t.string   "vocab_english_4", limit: 255
    t.string   "vocab_english_5", limit: 255
    t.string   "vocab_ger_1",     limit: 255
    t.string   "vocab_ger_2",     limit: 255
    t.string   "vocab_ger_3",     limit: 255
    t.string   "vocab_ger_4",     limit: 255
    t.string   "vocab_ger_5",     limit: 255
    t.integer  "assignment_id",   limit: 4
    t.integer  "user_id",         limit: 4
    t.string   "audio",           limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255, default: "",    null: false
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.boolean  "admin",                              default: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
