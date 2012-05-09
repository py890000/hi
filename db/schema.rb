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

ActiveRecord::Schema.define(:version => 20120507083204) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "userInfo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "articles", ["userInfo_id"], :name => "index_articles_on_userInfo_id"

  create_table "comments", :force => true do |t|
    t.integer  "userInfo_id"
    t.integer  "article_id"
    t.string   "author_name"
    t.text     "body"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "comments", ["article_id"], :name => "index_comments_on_article_id"
  add_index "comments", ["userInfo_id"], :name => "index_comments_on_userInfo_id"

  create_table "demos", :force => true do |t|
    t.string   "userInfo"
    t.string   "login_name"
    t.string   "login_password"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "article_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "taggings", ["article_id"], :name => "index_taggings_on_article_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_infos", :force => true do |t|
    t.string   "loginer"
    t.string   "password"
    t.string   "email"
    t.string   "age"
    t.datetime "creatTime"
    t.datetime "updateTime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end