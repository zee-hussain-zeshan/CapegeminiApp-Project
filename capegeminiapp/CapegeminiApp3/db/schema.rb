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

ActiveRecord::Schema.define(version: 20150730130152) do

  create_table "attends", force: :cascade do |t|
    t.string  "student_id", limit: 255
    t.integer "session_id", limit: 4
  end

  create_table "courses", primary_key: "module_id", force: :cascade do |t|
    t.string "module_name", limit: 255
  end

  create_table "enrolments", force: :cascade do |t|
    t.string "module_id",  limit: 255
    t.string "student_id", limit: 255
  end

  create_table "sessions", force: :cascade do |t|
    t.date   "date"
    t.string "module_id", limit: 255
  end

  create_table "students", primary_key: "student_id", force: :cascade do |t|
    t.string "firstname", limit: 255
    t.string "surname",   limit: 255
  end

  create_table "takes", force: :cascade do |t|
    t.integer  "assessment_id", limit: 4
    t.string   "student_id",    limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
