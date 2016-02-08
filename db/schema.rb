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

ActiveRecord::Schema.define(version: 20151107004847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.string   "state"
    t.integer  "patient_round_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "charts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observation_sets", force: :cascade do |t|
    t.integer  "respiratory_rate"
    t.string   "supplemental_o2"
    t.integer  "o2_saturation"
    t.decimal  "temperature"
    t.integer  "blood_pressure_max"
    t.integer  "blood_pressure_min"
    t.string   "blood_pressure_comment"
    t.integer  "heart_rate"
    t.string   "level_of_consciousness"
    t.integer  "total"
    t.integer  "pain_level"
    t.boolean  "urine_output_greater_than_1000ml"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "patient_id"
    t.integer  "user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "nhi"
    t.integer  "ward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.integer  "ward_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wards", force: :cascade do |t|
    t.string   "name"
    t.string   "ward_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
