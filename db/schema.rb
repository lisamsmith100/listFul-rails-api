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

ActiveRecord::Schema.define(version: 20170609062853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "list_items", force: :cascade do |t|
    t.string   "list_item_name"
    t.string   "list_item_category"
    t.boolean  "list_item_status"
    t.boolean  "list_item_reminder"
    t.date     "list_item_reminder_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "list_id"
    t.index ["list_id"], name: "index_list_items_on_list_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.string   "list_name"
    t.string   "list_category"
    t.boolean  "list_status"
    t.boolean  "list_reminder"
    t.date     "list_reminder_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_lists_on_user_id", using: :btree
  end

  create_table "template_items", force: :cascade do |t|
    t.string   "template_item_name"
    t.string   "template_item_category"
    t.boolean  "template_item_status"
    t.boolean  "template_item_reminder"
    t.date     "template_item_reminder_date"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "template_id"
    t.index ["template_id"], name: "index_template_items_on_template_id", using: :btree
  end

  create_table "templates", force: :cascade do |t|
    t.string   "template_name"
    t.string   "template_category"
    t.boolean  "template_status"
    t.boolean  "template_reminder"
    t.date     "template_reminder_date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_templates_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "examples", "users"
  add_foreign_key "list_items", "lists"
  add_foreign_key "lists", "users"
  add_foreign_key "template_items", "templates"
  add_foreign_key "templates", "users"
end
