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

ActiveRecord::Schema.define(:version => 20110804144839) do

  create_table "messages", :force => true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["created_at"], :name => "index_messages_on_created_at"
  add_index "messages", ["user_id"], :name => "index_messages_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "twitter_uid"
    t.string   "twitter_access_token"
    t.string   "avatar_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  add_index "users", ["token"], :name => "index_users_on_token", :unique => true
  add_index "users", ["twitter_uid"], :name => "index_users_on_twitter_uid", :unique => true

end
