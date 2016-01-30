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

ActiveRecord::Schema.define(version: 20160130061938) do

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.string   "repository"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "packages", ["repository"], name: "index_packages_on_repository"

  create_table "systems", force: :cascade do |t|
    t.string   "hostname"
    t.string   "os"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systems", ["os"], name: "index_systems_on_os"

  create_table "vulnerabilities", force: :cascade do |t|
    t.string   "advisory_id"
    t.string   "severity"
    t.date     "date_reported"
    t.text     "synopsis"
    t.string   "cve_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "vulnerabilities", ["severity"], name: "index_vulnerabilities_on_severity"

end