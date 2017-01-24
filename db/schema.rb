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

ActiveRecord::Schema.define(version: 20161130011215) do

  create_table "activities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "url",        limit: 255
  end

  create_table "activity_sessions", force: :cascade do |t|
    t.integer  "activity_id",        limit: 4
    t.integer  "session_id",         limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "session_student_id", limit: 4
  end

  add_index "activity_sessions", ["activity_id"], name: "index_activity_sessions_on_activity_id", using: :btree
  add_index "activity_sessions", ["session_id"], name: "index_activity_sessions_on_session_id", using: :btree
  add_index "activity_sessions", ["session_student_id"], name: "index_activity_sessions_on_session_student_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "phone",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "status",      limit: 4,     default: 0
  end

  create_table "functions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "session_students", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.datetime "start_session"
    t.datetime "end_session"
    t.integer  "student_id",     limit: 4
    t.integer  "status_session", limit: 4,   default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "session_students", ["student_id"], name: "index_session_students_on_student_id", using: :btree

  create_table "session_users", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "session_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "session_users", ["session_id"], name: "index_session_users_on_session_id", using: :btree
  add_index "session_users", ["user_id"], name: "index_session_users_on_user_id", using: :btree

  create_table "sessions", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.datetime "start_session"
    t.datetime "end_session"
    t.integer  "student_id",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "status_session", limit: 4
  end

  add_index "sessions", ["student_id"], name: "index_sessions_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.date     "old"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",     limit: 4
  end

  add_index "students", ["user_id"], name: "index_students_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "phone",                  limit: 255
    t.integer  "role",                   limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "function_id",            limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["function_id"], name: "index_users_on_function_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "activity_sessions", "activities"
  add_foreign_key "activity_sessions", "session_students"
  add_foreign_key "activity_sessions", "sessions"
  add_foreign_key "session_students", "students"
  add_foreign_key "session_users", "sessions"
  add_foreign_key "session_users", "users"
  add_foreign_key "sessions", "students"
  add_foreign_key "students", "users"
  add_foreign_key "users", "functions"
end
