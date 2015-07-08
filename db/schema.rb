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

ActiveRecord::Schema.define(version: 20150702105007) do

  create_table "users", force: :cascade do |t|
    t.string   "firstname",        limit: 255
    t.string   "middlename",       limit: 255
    t.string   "lastname",         limit: 255
    t.string   "emailid",          limit: 255
    t.string   "loginid",          limit: 255
    t.string   "password",         limit: 255
    t.string   "empid",            limit: 255
    t.date     "dob"
    t.string   "gender",           limit: 255
    t.string   "education",        limit: 255
    t.string   "comments",         limit: 255
    t.string   "locked",           limit: 255
    t.string   "reason",           limit: 255
    t.string   "phone",            limit: 255
    t.date     "deactivated_date"
    t.string   "timezone",         limit: 255
    t.string   "designation",      limit: 255
    t.date     "doj"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
