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

ActiveRecord::Schema.define(version: 2019_02_19_024900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adverse_reaction_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adverse_reactions", force: :cascade do |t|
    t.integer "product_id"
    t.integer "substance_id"
    t.integer "adverse_reaction_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "meddra_id"
    t.integer "system_organ_class_id"
    t.date "date_most_recent_spc"
    t.string "comments"
    t.integer "causality_id"
    t.integer "frequency_id"
    t.integer "class_warning_id"
    t.integer "post_marketing_id"
    t.integer "clinical_trial_id"
  end

  create_table "age_groups", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "causalities", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_warnings", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clinical_trials", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frequencies", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meddras", force: :cascade do |t|
    t.string "preferred_term"
    t.string "preferred_term_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_marketings", force: :cascade do |t|
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rawdata", id: false, force: :cascade do |t|
    t.text "product"
    t.text "substance"
    t.text "date_most_recent_spc"
    t.text "adr"
    t.text "soc"
    t.text "hlgt"
    t.text "hlt"
    t.text "llt"
    t.text "meddra_pt"
    t.text "pt_code"
    t.text "soc_code"
    t.text "age_group"
    t.text "gender"
    t.text "causality"
    t.text "frequency"
    t.text "class_warning"
    t.text "clinical_trials"
    t.text "post_marketing"
    t.text "comment"
  end

  create_table "substances", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_organ_classes", force: :cascade do |t|
    t.string "soc_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
