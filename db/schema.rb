# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091020095643) do

  create_table "after_life_discussion_group_questions", :force => true do |t|
    t.string   "question"
    t.boolean  "show_answer_by_textarea", :default => false
    t.boolean  "show_answer_by_radio",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cms_pages", :force => true do |t|
    t.string   "reference_string"
    t.string   "title"
    t.string   "sub_title"
    t.string   "nav_text"
    t.text     "body"
    t.text     "meta_keywords"
    t.text     "meta_description"
    t.integer  "position"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cms_pages", ["parent_id"], :name => "index_cms_pages_on_parent_id"
  add_index "cms_pages", ["position"], :name => "index_cms_pages_on_position"
  add_index "cms_pages", ["reference_string"], :name => "index_cms_pages_on_reference_string", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
