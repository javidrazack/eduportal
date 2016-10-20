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

ActiveRecord::Schema.define(version: 20161020114950) do

  create_table "attendances", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "no_of_hours"
    t.integer  "subID_id"
    t.boolean  "present",     default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["student_id"], name: "index_attendances_on_student_id"
    t.index ["subID_id"], name: "index_attendances_on_subID_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "admission_no",  null: false
    t.string   "class_roll_no", null: false
    t.string   "first_name",    null: false
    t.string   "middle_name"
    t.string   "last_name",     null: false
    t.integer  "batch_id",      null: false
    t.date     "date_of_birth", null: false
    t.string   "gender",        null: false
    t.string   "blood_group",   null: false
    t.string   "address_line1", null: false
    t.string   "address_line2"
    t.string   "city",          null: false
    t.string   "state",         null: false
    t.string   "pin_code",      null: false
    t.string   "phone1",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["batch_id"], name: "index_students_on_batch_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "sem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.boolean  "admin",                  default: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
