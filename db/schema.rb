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

ActiveRecord::Schema.define(version: 20140114012614) do

  create_table "base_establishments", force: true do |t|
    t.integer  "base_id"
    t.integer  "establishment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "base_establishments", ["base_id"], name: "index_base_establishments_on_base_id"
  add_index "base_establishments", ["establishment_id"], name: "index_base_establishments_on_establishment_id"

  create_table "bases", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "latitude"
    t.integer  "longitude"
    t.string   "url"
    t.string   "image"
    t.integer  "branch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "operator_number"
  end

  add_index "bases", ["branch_id"], name: "index_bases_on_branch_id"

  create_table "branches", force: true do |t|
    t.string "name"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_addresses", force: true do |t|
    t.string   "email"
    t.integer  "establishment_id"
    t.string   "description",      default: "Email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "email_addresses", ["establishment_id"], name: "index_email_addresses_on_establishment_id"

  create_table "establishment_categories", force: true do |t|
    t.integer  "establishment_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "establishment_categories", ["category_id"], name: "index_establishment_categories_on_category_id"
  add_index "establishment_categories", ["establishment_id"], name: "index_establishment_categories_on_establishment_id"

  create_table "establishments", force: true do |t|
    t.string   "name"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "latitude"
    t.integer  "longitude"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_numbers", force: true do |t|
    t.string   "number"
    t.integer  "establishment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description",      default: "Phone"
  end

  add_index "phone_numbers", ["establishment_id"], name: "index_phone_numbers_on_establishment_id"

  create_table "photos", force: true do |t|
    t.string   "filename"
    t.string   "content_type"
    t.integer  "file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "establishment_id"
    t.integer  "user_id"
  end

  add_index "photos", ["establishment_id"], name: "index_photos_on_establishment_id"

  create_table "reviews", force: true do |t|
    t.integer  "rating"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "establishment_id"
  end

  add_index "reviews", ["establishment_id", "user_id"], name: "index_reviews_on_establishment_id_and_user_id"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.integer  "base_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["base_id"], name: "index_users_on_base_id"

  create_table "websites", force: true do |t|
    t.string   "url"
    t.integer  "establishment_id"
    t.string   "description",      default: "Website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "websites", ["establishment_id"], name: "index_websites_on_establishment_id"

end
