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

ActiveRecord::Schema.define(version: 20160427135440) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street",     limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "student_id", limit: 4
  end

  create_table "batch_timings", force: :cascade do |t|
    t.integer  "batch_id",   limit: 4
    t.integer  "timing_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "batches", force: :cascade do |t|
    t.string   "batch_id",      limit: 255
    t.integer  "year",          limit: 4
    t.integer  "department_id", limit: 4
    t.string   "room_no",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "college_id", limit: 4
  end

  create_table "designations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "staff_id",   limit: 4
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staff_id",      limit: 255
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "email",         limit: 255
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "register_number", limit: 255
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.date     "dob"
    t.integer  "batch_id",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "time_slots", force: :cascade do |t|
    t.string   "time",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "time_table1s", force: :cascade do |t|
    t.string   "mon_1",       limit: 255
    t.string   "mon_2",       limit: 255
    t.string   "mon_3",       limit: 255
    t.string   "mon_4",       limit: 255
    t.string   "mon_5",       limit: 255
    t.string   "tue_1",       limit: 255
    t.string   "tue_2",       limit: 255
    t.string   "tue_3",       limit: 255
    t.string   "tue_4",       limit: 255
    t.string   "tue_5",       limit: 255
    t.string   "wed_1",       limit: 255
    t.string   "wed_2",       limit: 255
    t.string   "wed_3",       limit: 255
    t.string   "wed_4",       limit: 255
    t.string   "wed_5",       limit: 255
    t.string   "thus_1",      limit: 255
    t.string   "thus_2",      limit: 255
    t.string   "thus_3",      limit: 255
    t.string   "thus_4",      limit: 255
    t.string   "thus_5",      limit: 255
    t.string   "fri_1",       limit: 255
    t.string   "fri_2",       limit: 255
    t.string   "fri_3",       limit: 255
    t.string   "fri_4",       limit: 255
    t.string   "fri_5",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "mon_staff1",  limit: 255
    t.string   "mon_staff2",  limit: 255
    t.string   "mon_staff3",  limit: 255
    t.string   "mon_staff4",  limit: 255
    t.string   "mon_staff5",  limit: 255
    t.string   "tue_staff1",  limit: 255
    t.string   "tue_staff2",  limit: 255
    t.string   "tue_staff3",  limit: 255
    t.string   "tue_staff4",  limit: 255
    t.string   "tue_staff5",  limit: 255
    t.string   "wed_staff1",  limit: 255
    t.string   "wed_staff2",  limit: 255
    t.string   "wed_staff3",  limit: 255
    t.string   "wed_staff4",  limit: 255
    t.string   "wed_staff5",  limit: 255
    t.string   "thus_staff1", limit: 255
    t.string   "thus_staff2", limit: 255
    t.string   "thus_staff3", limit: 255
    t.string   "thus_staff4", limit: 255
    t.string   "thus_staff5", limit: 255
    t.string   "fri_staff1",  limit: 255
    t.string   "fri_staff2",  limit: 255
    t.string   "fri_staff3",  limit: 255
    t.string   "fri_staff4",  limit: 255
    t.string   "fri_staff5",  limit: 255
    t.integer  "batch_id",    limit: 4
  end

  create_table "timings", force: :cascade do |t|
    t.integer  "week_day_id",  limit: 4
    t.integer  "subject_id",   limit: 4
    t.integer  "slot_time_id", limit: 4
    t.integer  "staff_id",     limit: 4
    t.integer  "batch_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "week_days", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
