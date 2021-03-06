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

ActiveRecord::Schema.define(:version => 20130404003944) do

  create_table "friends", :force => true do |t|
    t.string   "friend"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "messages", :force => true do |t|
    t.string   "sender"
    t.text     "message"
    t.string   "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "people", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.decimal  "geoX"
    t.decimal  "geoY"
    t.boolean  "sessionStatus"
    t.text     "messages"
    t.datetime "timeConnected"
    t.datetime "lastModified"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "registers", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "send_geos", :force => true do |t|
    t.decimal  "geoX"
    t.decimal  "geoY"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "send_user_pass_geos", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.decimal  "geoX"
    t.decimal  "geoY"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "send_username_find_friends", :force => true do |t|
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "send_username_find_messages", :force => true do |t|
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "send_username_statuses", :force => true do |t|
    t.string   "username"
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_tables", :force => true do |t|
    t.string   "user"
    t.string   "password"
    t.string   "email"
    t.decimal  "geoX"
    t.decimal  "geoY"
    t.boolean  "status"
    t.string   "statusMsg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "geoX"
    t.string   "geoY"
    t.string   "status"
    t.string   "status_message"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
