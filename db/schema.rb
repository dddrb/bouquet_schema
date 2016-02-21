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

ActiveRecord::Schema.define(version: 20151122002400) do

  create_table "arrivals", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "purchase_order_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "arrivals", ["purchase_order_id"], name: "index_arrivals_on_purchase_order_id"

  create_table "assemblies", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "material_id"
    t.integer  "quantity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "assemblies", ["material_id"], name: "index_assemblies_on_material_id"
  add_index "assemblies", ["product_id"], name: "index_assemblies_on_product_id"

  create_table "customers", force: :cascade do |t|
    t.string   "state"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "shipment_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "deliveries", ["location_id"], name: "index_deliveries_on_location_id"
  add_index "deliveries", ["shipment_id"], name: "index_deliveries_on_shipment_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "material_id"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "purchase_orders", ["material_id"], name: "index_purchase_orders_on_material_id"
  add_index "purchase_orders", ["supplier_id"], name: "index_purchase_orders_on_supplier_id"

  create_table "retrievals", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "storage_id"
    t.integer  "delivery_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "retrievals", ["delivery_id"], name: "index_retrievals_on_delivery_id"
  add_index "retrievals", ["storage_id"], name: "index_retrievals_on_storage_id"

  create_table "sales_orders", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "product_id"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sales_orders", ["customer_id"], name: "index_sales_orders_on_customer_id"
  add_index "sales_orders", ["product_id"], name: "index_sales_orders_on_product_id"

  create_table "shipments", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "sales_order_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "shipments", ["sales_order_id"], name: "index_shipments_on_sales_order_id"

  create_table "stocks", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "arrival_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "stocks", ["arrival_id"], name: "index_stocks_on_arrival_id"
  add_index "stocks", ["location_id"], name: "index_stocks_on_location_id"

  create_table "storages", force: :cascade do |t|
    t.string   "state"
    t.date     "date"
    t.integer  "quantity"
    t.integer  "stock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "storages", ["stock_id"], name: "index_storages_on_stock_id"

  create_table "suppliers", force: :cascade do |t|
    t.string   "state"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
