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

ActiveRecord::Schema.define(version: 20131018153039) do

  create_table "events", force: true do |t|
    t.string   "event_hint_title"
    t.text     "event_hint_descr"
    t.string   "event_hint_pic"
    t.integer  "event_timer"
    t.string   "event_title"
    t.text     "event_descr"
    t.string   "event_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
