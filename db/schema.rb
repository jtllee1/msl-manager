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

ActiveRecord::Schema.define(version: 2020_01_27_202913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "astromons", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "specie_id"
    t.string "first_gem_shape"
    t.string "second_gem_shape"
    t.string "third_gem_shape"
    t.boolean "variant_state"
    t.integer "variant_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specie_id"], name: "index_astromons_on_specie_id"
    t.index ["user_id"], name: "index_astromons_on_user_id"
  end

  create_table "first_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "astromon_id"
    t.index ["astromon_id"], name: "index_first_gems_on_astromon_id"
    t.index ["msl_gem_id"], name: "index_first_gems_on_msl_gem_id"
  end

  create_table "gem_categories", force: :cascade do |t|
    t.string "name"
    t.string "pic"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "flat"
    t.float "hp", default: 0.0
    t.float "attack", default: 0.0
    t.float "defence", default: 0.0
    t.float "recovery", default: 0.0
    t.float "crit_dmg", default: 0.0
    t.float "crit_rate", default: 0.0
    t.float "resist", default: 0.0
  end

  create_table "msl_gems", force: :cascade do |t|
    t.bigint "user_id"
    t.string "gem_shape"
    t.bigint "gem_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "available", default: true
    t.float "s_hp", default: 0.0
    t.float "s_attack", default: 0.0
    t.float "s_defence", default: 0.0
    t.float "s_recovery", default: 0.0
    t.float "s_crit_dmg", default: 0.0
    t.float "s_crit_rate", default: 0.0
    t.float "m_hp", default: 0.0
    t.float "m_attack", default: 0.0
    t.float "m_defence", default: 0.0
    t.float "m_recovery", default: 0.0
    t.float "m_crit_dmg", default: 0.0
    t.float "m_crit_rate", default: 0.0
    t.float "m_resist", default: 0.0
    t.float "s_resist", default: 0.0
    t.index ["gem_category_id"], name: "index_msl_gems_on_gem_category_id"
    t.index ["user_id"], name: "index_msl_gems_on_user_id"
  end

  create_table "second_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "astromon_id"
    t.index ["astromon_id"], name: "index_second_gems_on_astromon_id"
    t.index ["msl_gem_id"], name: "index_second_gems_on_msl_gem_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "element"
    t.string "pic"
    t.integer "hp"
    t.integer "attack"
    t.integer "defence"
    t.integer "recovery"
    t.integer "crit_dmg"
    t.integer "crit_rate"
    t.integer "resist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "first_skill_name"
    t.text "first_skill_desc"
    t.string "first_skill_pic"
    t.string "second_skill_name"
    t.text "second_skill_desc"
    t.string "second_skill_pic"
    t.string "variant_skill_name"
    t.text "variant_skill_desc"
    t.string "variant_skill_pic"
  end

  create_table "third_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "astromon_id"
    t.index ["astromon_id"], name: "index_third_gems_on_astromon_id"
    t.index ["msl_gem_id"], name: "index_third_gems_on_msl_gem_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "guest", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variant_skills", force: :cascade do |t|
    t.string "name"
    t.string "pic"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.float "hp", default: 0.0
    t.float "attack", default: 0.0
    t.float "defence", default: 0.0
    t.float "recovery", default: 0.0
    t.float "crit_rate", default: 0.0
    t.float "crit_dmg", default: 0.0
    t.float "resist", default: 0.0
  end

  add_foreign_key "astromons", "species", column: "specie_id"
  add_foreign_key "astromons", "users"
  add_foreign_key "first_gems", "astromons"
  add_foreign_key "first_gems", "msl_gems"
  add_foreign_key "msl_gems", "gem_categories"
  add_foreign_key "msl_gems", "users"
  add_foreign_key "second_gems", "astromons"
  add_foreign_key "second_gems", "msl_gems"
  add_foreign_key "third_gems", "astromons"
  add_foreign_key "third_gems", "msl_gems"
end
