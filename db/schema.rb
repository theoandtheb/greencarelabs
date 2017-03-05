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

ActiveRecord::Schema.define(version: 20170305190429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "accelerometer_data", force: :cascade do |t|
    t.date     "date_subm"
    t.time     "time_subm"
    t.integer  "x"
    t.integer  "y"
    t.integer  "z"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "accelerometer_id"
    t.index ["accelerometer_id"], name: "index_accelerometer_data_on_accelerometer_id", using: :btree
  end

  create_table "accelerometers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "session_id"
    t.index ["session_id"], name: "index_accelerometers_on_session_id", using: :btree
  end

  create_table "heart_rates", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "session_id"
    t.index ["session_id"], name: "index_heart_rates_on_session_id", using: :btree
  end

  create_table "participant_locations", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "session_id"
    t.index ["session_id"], name: "index_participant_locations_on_session_id", using: :btree
  end

  create_table "participant_observations", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "session_id"
    t.index ["session_id"], name: "index_participant_observations_on_session_id", using: :btree
  end

  create_table "participants", force: :cascade do |t|
    t.string   "surname"
    t.string   "first_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "report_id"
    t.index ["report_id"], name: "index_participants_on_report_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "participant_id"
    t.index ["participant_id"], name: "index_sessions_on_participant_id", using: :btree
  end

  create_table "tests", force: :cascade do |t|
    t.text     "burp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accelerometer_data", "accelerometers"
  add_foreign_key "accelerometers", "sessions"
  add_foreign_key "heart_rates", "sessions"
  add_foreign_key "participant_locations", "sessions"
  add_foreign_key "participant_observations", "sessions"
  add_foreign_key "participants", "reports"
  add_foreign_key "sessions", "participants"
end
