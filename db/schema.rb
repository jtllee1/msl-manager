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

ActiveRecord::Schema.define(version: 2019_12_11_212725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "astromons", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "specie_id"
    t.string "first_gem_shape"
    t.string "second_gem_shape"
    t.string "third_gem_shape"
    t.bigint "first_gem_id"
    t.bigint "second_gem_id"
    t.bigint "third_gem_id"
    t.boolean "variant_state"
    t.integer "variant_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_gem_id"], name: "index_astromons_on_first_gem_id"
    t.index ["second_gem_id"], name: "index_astromons_on_second_gem_id"
    t.index ["specie_id"], name: "index_astromons_on_specie_id"
    t.index ["third_gem_id"], name: "index_astromons_on_third_gem_id"
    t.index ["user_id"], name: "index_astromons_on_user_id"
  end

  create_table "first_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["msl_gem_id"], name: "index_first_gems_on_msl_gem_id"
  end

  create_table "first_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_first_skills_on_skill_id"
  end

  create_table "gem_categories", force: :cascade do |t|
    t.string "name"
    t.string "pic"
    t.text "description"
    t.integer "hp"
    t.integer "attack"
    t.integer "defence"
    t.integer "recovery"
    t.integer "crit_dmg"
    t.integer "crit_rate"
    t.integer "resist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "msl_gems", force: :cascade do |t|
    t.bigint "user_id"
    t.string "gem_shape"
    t.bigint "gem_category_id"
    t.integer "s_hp"
    t.integer "s_attack"
    t.integer "s_defence"
    t.integer "s_recovery"
    t.integer "s_crit_dmg"
    t.integer "s_crit_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "m_hp"
    t.integer "m_attack"
    t.integer "m_defence"
    t.integer "m_recovery"
    t.integer "m_crit_dmg"
    t.integer "m_crit_rate"
    t.index ["gem_category_id"], name: "index_msl_gems_on_gem_category_id"
    t.index ["user_id"], name: "index_msl_gems_on_user_id"
  end

  create_table "second_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["msl_gem_id"], name: "index_second_gems_on_msl_gem_id"
  end

  create_table "second_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_second_skills_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "pic"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
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
    t.bigint "first_skill_id"
    t.bigint "second_skill_id"
    t.bigint "variant_skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_skill_id"], name: "index_species_on_first_skill_id"
    t.index ["second_skill_id"], name: "index_species_on_second_skill_id"
    t.index ["variant_skill_id"], name: "index_species_on_variant_skill_id"
  end

  create_table "third_gems", force: :cascade do |t|
    t.bigint "msl_gem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "variant_skills", force: :cascade do |t|
    t.string "name"
    t.string "pic"
    t.text "description"
    t.integer "hp"
    t.integer "attack"
    t.integer "defence"
    t.integer "recovery"
    t.integer "crit_dmg"
    t.integer "crit_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  add_foreign_key "astromons", "first_gems"
  add_foreign_key "astromons", "second_gems"
  add_foreign_key "astromons", "species", column: "specie_id"
  add_foreign_key "astromons", "third_gems"
  add_foreign_key "astromons", "users"
  add_foreign_key "first_gems", "msl_gems"
  add_foreign_key "first_skills", "skills"
  add_foreign_key "msl_gems", "gem_categories"
  add_foreign_key "msl_gems", "users"
  add_foreign_key "second_gems", "msl_gems"
  add_foreign_key "second_skills", "skills"
  add_foreign_key "species", "first_skills"
  add_foreign_key "species", "second_skills"
  add_foreign_key "species", "variant_skills"
  add_foreign_key "third_gems", "msl_gems"
end
