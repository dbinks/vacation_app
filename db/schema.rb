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

ActiveRecord::Schema.define(version: 20160607180736) do

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.string   "hotel_image"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "legs", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "place"
    t.string   "place_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.integer  "leg_id"
    t.integer  "rating"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.integer  "rating"
    t.string   "restaurant_image"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stays", force: :cascade do |t|
    t.integer  "hotel_id"
    t.integer  "leg_id"
    t.integer  "rating"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
