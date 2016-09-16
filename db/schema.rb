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

ActiveRecord::Schema.define(version: 20160912051536) do

  create_table "ecommerce_brands", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ecommerce_carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ecommerce_categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "ecommerce_colors", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_id", limit: 4
  end

  add_index "ecommerce_colors", ["product_id"], name: "index_ecommerce_colors_on_product_id", using: :btree

  create_table "ecommerce_images", force: :cascade do |t|
    t.string   "picture",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_id", limit: 4
  end

  add_index "ecommerce_images", ["product_id"], name: "index_ecommerce_images_on_product_id", using: :btree

  create_table "ecommerce_order_items", force: :cascade do |t|
    t.integer  "quantity",    limit: 4
    t.string   "color",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "cart_id",     limit: 4
    t.integer  "product_id",  limit: 4
    t.integer  "order_id",    limit: 4
    t.float    "item_price",  limit: 24
    t.float    "total_price", limit: 24
  end

  add_index "ecommerce_order_items", ["cart_id"], name: "index_ecommerce_order_items_on_cart_id", using: :btree
  add_index "ecommerce_order_items", ["order_id"], name: "index_ecommerce_order_items_on_order_id", using: :btree
  add_index "ecommerce_order_items", ["product_id"], name: "index_ecommerce_order_items_on_product_id", using: :btree

  create_table "ecommerce_orders", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "mobile",      limit: 255
    t.string   "address",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "cart_id",     limit: 4
    t.float    "total_price", limit: 24
  end

  add_index "ecommerce_orders", ["cart_id"], name: "index_ecommerce_orders_on_cart_id", using: :btree

  create_table "ecommerce_products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.float    "price",       limit: 24
    t.integer  "discount",    limit: 4
    t.integer  "quantity",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id", limit: 4
    t.integer  "brand_id",    limit: 4
  end

  add_index "ecommerce_products", ["brand_id"], name: "index_ecommerce_products_on_brand_id", using: :btree
  add_index "ecommerce_products", ["category_id"], name: "index_ecommerce_products_on_category_id", using: :btree

end
