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

ActiveRecord::Schema.define(version: 20170603190601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days_deals", force: :cascade do |t|
    t.integer "day_id"
    t.integer "deal_id"
    t.index ["day_id"], name: "index_days_deals_on_day_id", using: :btree
    t.index ["deal_id"], name: "index_days_deals_on_deal_id", using: :btree
  end

  create_table "deals", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.date     "expiration"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "venue_id"
    t.time     "start_time"
    t.decimal  "hours_active"
  end

  create_table "open_spans", force: :cascade do |t|
    t.time     "start"
    t.time     "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peaks", force: :cascade do |t|
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "role"
    t.boolean  "approved",               default: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
    t.string   "state"
  end

  add_foreign_key "days_deals", "days"
  add_foreign_key "days_deals", "deals"
end
