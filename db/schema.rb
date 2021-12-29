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

ActiveRecord::Schema.define(version: 2021_12_29_083634) do

  create_table "admins", force: :cascade do |t|
    t.string "login_id", null: false
    t.string "password", null: false
    t.string "name", null: false
    t.date "birthday", null: false
    t.string "tel", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "login_id", null: false
    t.string "password", null: false
    t.string "name", null: false
    t.date "birthday", null: false
    t.string "tel", null: false
    t.string "email", null: false
    t.string "payment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.text "explanation", null: false
    t.date "released_at", null: false
    t.date "expired_at", null: false
    t.integer "screening_time", null: false
    t.string "distribution", null: false
    t.string "director", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservation_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "payment"
    t.integer "chiket_sheets"
    t.integer "total_sheets"
    t.datetime "confirm_time"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.date "screening_date", null: false
    t.time "starttime", null: false
    t.time "endtime", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screens", force: :cascade do |t|
    t.integer "screen_no", null: false
    t.integer "seat_group", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer "seat_group", null: false
    t.string "line", null: false
    t.integer "start_line", null: false
    t.integer "last_line", null: false
    t.integer "num", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string "store_name", null: false
    t.string "address", null: false
    t.string "tel", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "type", null: false
    t.integer "total", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
