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

ActiveRecord::Schema.define(:version => 20120729190513) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "latin_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "country_id"
  end

  create_table "countries", :force => true do |t|
    t.string "name"
    t.string "latin_name"
  end

  create_table "details", :force => true do |t|
    t.integer "order_id"
    t.integer "dish_id"
    t.integer "count"
  end

  create_table "dishes", :force => true do |t|
    t.integer "restaurant_id"
    t.integer "cuisine_id"
    t.string  "name"
    t.text    "desc"
    t.string  "image"
    t.boolean "available"
  end

  create_table "orders", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.float    "sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "latin_name"
    t.text     "check_header"
    t.text     "check_footer"
    t.integer  "city_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "restaurants_users", :force => true do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.boolean  "visible"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "roles", ["name"], :name => "index_roles_on_name", :unique => true

  create_table "sections", :force => true do |t|
    t.string  "name"
    t.string  "latin_name"
    t.integer "section_id"
    t.integer "restaurant_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "login"
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "role_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
