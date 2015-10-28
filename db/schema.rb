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

ActiveRecord::Schema.define(version: 20151028004103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.string   "bad"
    t.string   "good"
    t.string   "great"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "carrier"
    t.string   "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "condition"
    t.integer  "price"
  end

  create_table "sales", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "country"
    t.string   "phone"
    t.string   "paypal_email"
    t.datetime "phone_shipped"
    t.datetime "phone_arrived"
    t.datetime "sale_paid"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "product_id"
    t.boolean  "mail_check"
    t.boolean  "complete_sale"
  end

  create_table "superusers", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
