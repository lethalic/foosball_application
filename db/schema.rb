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

ActiveRecord::Schema.define(version: 2019_11_16_012317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: :cascade do |t|
    t.string "team_one"
    t.string "team_two"
    t.integer "team_one_score"
    t.integer "team_two_score"
    t.string "winning_team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches_teams", id: false, force: :cascade do |t|
    t.bigint "match_id", null: false
    t.bigint "team_id", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "player_one"
    t.string "player_two"
    t.integer "wins"
    t.float "win_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams_users", id: false, force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
