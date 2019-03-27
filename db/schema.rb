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

ActiveRecord::Schema.define(version: 2019_03_27_212008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "wallet_address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.text "description"
    t.string "location"
    t.string "title"
    t.bigint "category_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "items_reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_items_reviews_on_review_id"
    t.index ["user_id"], name: "index_items_reviews_on_user_id"
  end

  create_table "listing_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "item_id"
    t.boolean "is_available"
    t.float "sale_price"
    t.float "price_per_time"
    t.bigint "time_unit_id"
    t.bigint "listing_type_id"
    t.float "auction_begin_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_listings_on_item_id"
    t.index ["listing_type_id"], name: "index_listings_on_listing_type_id"
    t.index ["time_unit_id"], name: "index_listings_on_time_unit_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "item_id"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_photos_on_item_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "stars"
    t.text "comment"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "time_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.string "type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_transactions_on_item_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_users_reviews_on_review_id"
    t.index ["user_id"], name: "index_users_reviews_on_user_id"
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "items", "users"
  add_foreign_key "items_reviews", "reviews"
  add_foreign_key "items_reviews", "users"
  add_foreign_key "listings", "items"
  add_foreign_key "listings", "listing_types"
  add_foreign_key "listings", "time_units"
  add_foreign_key "photos", "items"
  add_foreign_key "reviews", "users"
  add_foreign_key "transactions", "items"
  add_foreign_key "transactions", "users"
  add_foreign_key "users_reviews", "reviews"
  add_foreign_key "users_reviews", "users"
end
