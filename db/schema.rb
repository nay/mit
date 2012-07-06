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

ActiveRecord::Schema.define(:version => 20120705074322) do

  create_table "days", :force => true do |t|
    t.date     "created_on", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "days", ["created_on"], :name => "index_days_on_created_on"

  create_table "tasks", :force => true do |t|
    t.integer  "day_id",                        :null => false
    t.text     "name",                          :null => false
    t.boolean  "lifework",   :default => false, :null => false
    t.string   "status",     :default => "new", :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
