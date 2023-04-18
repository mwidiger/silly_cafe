# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_13_130106) do
  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.integer "item_id"
    t.float "discount_rate"
    t.integer "when_ordered_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_discounts_on_item_id"
    t.index ["when_ordered_item_id"], name: "index_discounts_on_when_ordered_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "order_discounts", force: :cascade do |t|
    t.integer "order_id"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discount"], name: "index_order_discounts_on_discount"
    t.index ["order_id"], name: "index_order_discounts_on_order_id"
  end

  create_table "order_line_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "item_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.float "tax"
    t.integer "quantity"
    t.index ["item_id"], name: "index_order_line_items_on_item_id"
    t.index ["order_id"], name: "index_order_line_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "estimated_deliver_at"
    t.float "item_cost"
    t.float "total_tax"
    t.float "total_sale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.integer "user_id"
    t.index ["estimated_deliver_at"], name: "index_orders_on_estimated_deliver_at"
    t.index ["user_id", "estimated_deliver_at", "created_at"], name: "index_orders_on_user_id_and_estimated_deliver_at_and_created_at"
  end

  create_table "prices", force: :cascade do |t|
    t.integer "item_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["item_id"], name: "index_prices_on_item_id"
  end

  create_table "tax_rates", force: :cascade do |t|
    t.integer "item_id"
    t.float "tax_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["item_id"], name: "index_tax_rates_on_item_id"
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

end
