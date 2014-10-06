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

ActiveRecord::Schema.define(version: 20141004074103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "manager"
    t.integer  "phone"
    t.text     "website"
    t.text     "email"
    t.text     "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", force: true do |t|
    t.integer  "number"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.integer  "winner_id"
    t.integer  "loser_id"
    t.date     "date"
    t.integer  "winner_games"
    t.integer  "winner_points"
    t.float    "winner_before_matrix"
    t.float    "winner_matrix_change"
    t.integer  "loser_games"
    t.integer  "loser_points"
    t.float    "loser_before_matrix"
    t.float    "loser_matrix_change"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "player_num"
    t.float    "matrix"
    t.integer  "phone"
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_digest"
    t.text     "avatar",          default: "http://top10hm.com/wp-content/uploads/2012/06/Squash-300x200.jpg"
  end

  create_table "players_teams", id: false, force: true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "club_id"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
