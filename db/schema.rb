# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_13_133125) do

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

  create_table "first_trinkets", force: :cascade do |t|
    t.bigint "trinket_1_id", null: false
    t.bigint "astromon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["astromon_id"], name: "index_first_trinkets_on_astromon_id"
    t.index ["trinket_1_id"], name: "index_first_trinkets_on_trinket_1_id"
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

  create_table "second_trinkets", force: :cascade do |t|
    t.bigint "trinket_2_id", null: false
    t.bigint "astromon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["astromon_id"], name: "index_second_trinkets_on_astromon_id"
    t.index ["trinket_2_id"], name: "index_second_trinkets_on_trinket_2_id"
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
    t.integer "evo"
    t.string "typing"
  end

  create_table "third_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "astromon_id"
    t.index ["astromon_id"], name: "index_third_gems_on_astromon_id"
    t.index ["msl_gem_id"], name: "index_third_gems_on_msl_gem_id"
  end

  create_table "third_trinkets", force: :cascade do |t|
    t.bigint "trinket_3_id", null: false
    t.bigint "astromon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["astromon_id"], name: "index_third_trinkets_on_astromon_id"
    t.index ["trinket_3_id"], name: "index_third_trinkets_on_trinket_3_id"
  end

  create_table "trinket_1s", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "m_hp", default: 0
    t.integer "s_defence", default: 0
    t.integer "s_recovery", default: 0
    t.float "s_crit_res", default: 0.0
    t.boolean "available", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trinket_1s_on_user_id"
  end

  create_table "trinket_2s", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "m_attack", default: 0
    t.float "s_crit_dmg", default: 0.0
    t.float "s_resist", default: 0.0
    t.integer "s_recovery", default: 0
    t.boolean "available", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trinket_2s_on_user_id"
  end

  create_table "trinket_3s", force: :cascade do |t|
    t.bigint "user_id"
    t.float "m_crit_res", default: 0.0
    t.integer "s_defence", default: 0
    t.integer "s_attack", default: 0
    t.integer "s_hp", default: 0
    t.boolean "available", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trinket_3s_on_user_id"
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
  add_foreign_key "first_trinkets", "astromons"
  add_foreign_key "first_trinkets", "trinket_1s"
  add_foreign_key "msl_gems", "gem_categories"
  add_foreign_key "msl_gems", "users"
  add_foreign_key "second_gems", "astromons"
  add_foreign_key "second_gems", "msl_gems"
  add_foreign_key "second_trinkets", "astromons"
  add_foreign_key "second_trinkets", "trinket_2s"
  add_foreign_key "third_gems", "astromons"
  add_foreign_key "third_gems", "msl_gems"
  add_foreign_key "third_trinkets", "astromons"
  add_foreign_key "third_trinkets", "trinket_3s"
  add_foreign_key "trinket_1s", "users"
  add_foreign_key "trinket_2s", "users"
  add_foreign_key "trinket_3s", "users"
end
