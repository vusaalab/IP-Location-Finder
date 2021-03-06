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

ActiveRecord::Schema.define(version: 20160310132616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ip2_location_v4s", id: false, force: :cascade do |t|
    t.integer "ip_from",      limit: 8,  null: false
    t.integer "ip_to",        limit: 8,  null: false
    t.string  "country_code", limit: 2,  null: false
    t.string  "country_name", limit: 64, null: false
  end

  create_table "ip2_location_v6s", id: false, force: :cascade do |t|
    t.decimal "ip_from",                 precision: 39, null: false
    t.decimal "ip_to",                   precision: 39, null: false
    t.string  "country_code", limit: 2,                 null: false
    t.string  "country_name", limit: 64,                null: false
  end

end
