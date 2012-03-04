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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120304024214) do

  create_table "checks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_checks", :force => true do |t|
    t.integer  "client_id"
    t.integer  "check_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.string   "email"
    t.string   "password"
    t.string   "phone"
    t.text     "comment"
    t.string   "image_url"
    t.integer  "merit"
    t.decimal  "payment",    :precision => 8, :scale => 2
    t.datetime "due"
    t.integer  "drop_id"
    t.integer  "radio_id"
    t.integer  "check_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drops", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "radios", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
