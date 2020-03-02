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

ActiveRecord::Schema.define(version: 2020_03_01_041914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "social_reason", limit: 150
    t.string "address", limit: 90
    t.string "giro", limit: 45
    t.bigint "comune_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comune_id"], name: "index_clients_on_comune_id"
  end

  create_table "comunes", force: :cascade do |t|
    t.string "name", limit: 45
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_comunes_on_region_id"
  end

  create_table "policies", force: :cascade do |t|
    t.float "prime"
    t.date "start_date"
    t.date "end_date"
    t.float "comision"
    t.string "payment_type", limit: 45
    t.bigint "product_id"
    t.bigint "client_id"
    t.bigint "sale_executive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_policies_on_client_id"
    t.index ["product_id"], name: "index_policies_on_product_id"
    t.index ["sale_executive_id"], name: "index_policies_on_sale_executive_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", limit: 45
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_executives", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "email", limit: 45
    t.string "password", limit: 45
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clients", "comunes"
  add_foreign_key "comunes", "regions"
  add_foreign_key "policies", "clients"
  add_foreign_key "policies", "products"
  add_foreign_key "policies", "sale_executives"
end
