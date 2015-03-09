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

ActiveRecord::Schema.define(version: 20150309143533) do

  create_table "dish_rating_comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "dish_rating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dish_ratings", force: true do |t|
    t.decimal  "rate_value"
    t.integer  "user_id"
    t.integer  "dish_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "category"
    t.integer  "image_id"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "location_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", force: true do |t|
    t.boolean  "is_active"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "image_id"
    t.integer  "rating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_rating_comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "restaurant_rating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_ratings", force: true do |t|
    t.decimal  "rate_value"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.string   "location"
    t.decimal  "gps_lat"
    t.decimal  "gps_lon"
    t.string   "category"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "hashed_pass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end