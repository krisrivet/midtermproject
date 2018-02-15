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

ActiveRecord::Schema.define(version: 20180214210026) do

  create_table "personals", force: :cascade do |t|
    t.string "player_name"
    t.integer "age"
    t.string "team"
    t.string "college"
    t.decimal "average_points"
    t.decimal "average_assists"
    t.decimal "average_rebounds"
    t.decimal "average_steals"
    t.decimal "average_blocks"
    t.decimal "average_turnover"
    t.decimal "average_personal_foul"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "player_name"
    t.decimal "height"
    t.decimal "weight"
    t.integer "born"
    t.string "college"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.decimal "min_height"
    t.decimal "max_height"
    t.decimal "min_weight"
    t.integer "born"
    t.string "college"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "season_stats", force: :cascade do |t|
    t.string "player_name"
    t.integer "year"
    t.integer "age"
    t.string "team"
    t.integer "games_played"
    t.decimal "average_minutes"
    t.decimal "field_goal_percentage"
    t.decimal "three_point_percentage"
    t.decimal "free_throw_percentage"
    t.decimal "average_points"
    t.decimal "average_assists"
    t.decimal "average_rebounds"
    t.decimal "average_steals"
    t.decimal "average_blocks"
    t.decimal "average_turnover"
    t.decimal "average_personal_foul"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
