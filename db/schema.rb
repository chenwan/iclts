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

ActiveRecord::Schema.define(:version => 20130202060849) do

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "members", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "realname"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "phone"
    t.string   "qq"
    t.string   "current_location"
    t.string   "resume_url"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "resume_url_file_name"
    t.string   "resume_url_content_type"
    t.integer  "resume_url_file_size"
    t.datetime "resume_url_updated_at"
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.string   "image_url_1"
    t.string   "image_url_2"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
