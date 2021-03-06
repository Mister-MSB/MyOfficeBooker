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

ActiveRecord::Schema.define(version: 2018_11_18_110700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "complement"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.string "usage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booker_id"
    t.bigint "owner_id"
    t.index ["booker_id"], name: "index_addresses_on_booker_id"
    t.index ["owner_id"], name: "index_addresses_on_owner_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "bookers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.date "birthdate"
    t.string "mobile"
    t.string "phone"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_bookers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_bookers_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.integer "capacity"
    t.string "booking_type"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "booker_id"
    t.bigint "place_id"
    t.index ["booker_id"], name: "index_bookings_on_booker_id"
    t.index ["place_id"], name: "index_bookings_on_place_id"
  end

  create_table "building_images", force: :cascade do |t|
    t.string "image"
    t.bigint "building_id"
    t.index ["building_id"], name: "index_building_images_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.float "long"
    t.float "lat"
    t.string "street"
    t.string "complement"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "owner_id"
    t.string "image"
    t.index ["owner_id"], name: "index_buildings_on_owner_id"
  end

  create_table "notes", force: :cascade do |t|
    t.float "note"
    t.bigint "place_id"
    t.bigint "booker_id"
    t.string "comment"
    t.index ["booker_id"], name: "index_notes_on_booker_id"
    t.index ["place_id"], name: "index_notes_on_place_id"
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.date "birthdate"
    t.string "mobile"
    t.string "phone"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "place_images", force: :cascade do |t|
    t.string "image"
    t.bigint "place_id"
    t.index ["place_id"], name: "index_place_images_on_place_id"
  end

  create_table "place_options", force: :cascade do |t|
    t.integer "place_id"
    t.integer "option_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.integer "total_price"
    t.integer "unit_price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "building_id"
    t.string "image"
    t.index ["building_id"], name: "index_places_on_building_id"
  end

end
