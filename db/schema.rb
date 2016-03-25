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

ActiveRecord::Schema.define(version: 20160325105058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "region_id"
    t.boolean  "important"
    t.string   "title_ru"
    t.string   "title_ua"
    t.string   "title_be"
    t.string   "title_en"
    t.string   "title_es"
    t.string   "title_pt"
    t.string   "title_de"
    t.string   "title_fr"
    t.string   "title_it"
    t.string   "title_pl"
    t.string   "title_ja"
    t.string   "title_lt"
    t.string   "title_lv"
    t.string   "title_cz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cities", ["country_id", "region_id"], name: "index_cities_on_country_id_and_region_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "title_ru"
    t.string   "title_ua"
    t.string   "title_be"
    t.string   "title_en"
    t.string   "title_es"
    t.string   "title_pt"
    t.string   "title_de"
    t.string   "title_fr"
    t.string   "title_it"
    t.string   "title_pl"
    t.string   "title_ja"
    t.string   "title_lt"
    t.string   "title_lv"
    t.string   "title_cz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.integer  "country_id"
    t.string   "title_ru"
    t.string   "title_ua"
    t.string   "title_be"
    t.string   "title_en"
    t.string   "title_es"
    t.string   "title_pt"
    t.string   "title_de"
    t.string   "title_fr"
    t.string   "title_it"
    t.string   "title_pl"
    t.string   "title_ja"
    t.string   "title_lt"
    t.string   "title_lv"
    t.string   "title_cz"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "regions", ["country_id"], name: "index_regions_on_country_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skills", ["name"], name: "index_skills_on_name", using: :btree

  create_table "user_descriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name", default: "",            null: false
    t.string   "last_name",  default: "",            null: false
    t.string   "avatar",     default: "default.png"
    t.date     "birthday",                           null: false
    t.float    "rate",       default: 0.0,           null: false
    t.string   "telefon",    default: ""
    t.string   "skype",      default: ""
    t.integer  "country_id"
    t.integer  "region_id"
    t.integer  "city_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "user_descriptions", ["country_id", "region_id", "city_id"], name: "index_user_descriptions_on_country_id_and_region_id_and_city_id", using: :btree
  add_index "user_descriptions", ["user_id"], name: "index_user_descriptions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "skill_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["skill_id"], name: "index_users_on_skill_id", using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "users_skills", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "skill_id"
  end

  add_index "users_skills", ["user_id", "skill_id"], name: "index_users_skills_on_user_id_and_skill_id", using: :btree

end
