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

ActiveRecord::Schema.define(version: 20150727193152) do

  create_table "ls", force: :cascade do |t|
    t.string   "Quotes"
    t.text     "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_tiles", force: :cascade do |t|
    t.string   "original_image"
    t.string   "quote"
    t.string   "output_image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "font_size"
    t.string   "font_color"
    t.string   "font_outline"
    t.string   "font_style"
    t.string   "border_color"
    t.string   "border_width"
    t.string   "font_outline_width"
  end

  create_table "quotes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
