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

ActiveRecord::Schema[7.0].define(version: 2023_05_12_183831) do
  create_table "aircraft_parts", force: :cascade do |t|
    t.string "part_name"
    t.string "material_composition"
    t.integer "age"
    t.string "condition"
    t.string "location"
    t.string "manufacturer"
    t.string "aircraft_model"
    t.string "potential_use_cases"
    t.integer "new_parts_carbon"
    t.integer "recycled_parts_carbon"
    t.integer "new_water_usage"
    t.integer "recycled_water_usage"
    t.integer "new_landfil"
    t.integer "recycled_landfill"
    t.integer "new_energry"
    t.integer "recycled_energy"
    t.float "recycling_rate"
    t.float "new_toxity"
    t.float "recycled_toxity"
    t.float "remanufacturing_potential"
    t.float "life_cycle_assessment"
    t.float "renewable_material_content"
    t.integer "carbon_footprint_saved"
    t.integer "water_usage_saved"
    t.integer "landfill_waste_save"
    t.integer "energy_consumption_saved"
    t.float "toxicity_score_difference"
    t.float "remanufacturing_potentia"
    t.float "life_ycle_assessment_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "company_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "user_type", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
