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

ActiveRecord::Schema.define(version: 20170110154144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_organizations", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "goods_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods_types_organizations", force: :cascade do |t|
    t.boolean  "offers"
    t.boolean  "needs"
    t.boolean  "urgent"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "description"
    t.integer  "organization_id"
    t.integer  "goods_type_id"
    t.boolean  "active",          default: true
    t.index ["goods_type_id"], name: "index_goods_types_organizations_on_goods_type_id", using: :btree
    t.index ["organization_id"], name: "index_goods_types_organizations_on_organization_id", using: :btree
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "suite"
    t.string   "city"
    t.string   "postal"
    t.string   "province"
    t.string   "country"
    t.string   "email"
    t.bigint   "primaryphone"
    t.bigint   "secondaryphone"
    t.string   "url"
    t.string   "orgtype"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "description"
    t.string   "image"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_organizations_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.bigint   "phone"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "password_digest", default: "t"
    t.string   "provider"
    t.string   "uid"
  end

  add_foreign_key "organizations", "users"
end
