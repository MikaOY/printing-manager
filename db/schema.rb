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

ActiveRecord::Schema.define(version: 20171220055410) do

  create_table "filaments", force: :cascade do |t|
    t.string "color"
    t.string "brand"
    t.float "fullWeight"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "print_jobs", force: :cascade do |t|
    t.integer "filament_id"
    t.float "usedWeight"
    t.datetime "doneTime"
    t.integer "printer_id"
    t.string "reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filament_id"], name: "index_print_jobs_on_filament_id"
    t.index ["printer_id"], name: "index_print_jobs_on_printer_id"
  end

  create_table "printers", force: :cascade do |t|
    t.string "name"
    t.float "startupCost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end