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

ActiveRecord::Schema.define(:version => 20080806221744) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "section"
    t.date     "date"
    t.integer  "school_year",     :limit => 11
    t.integer  "issue",           :limit => 11
    t.string   "author"
    t.string   "author_position"
    t.text     "body"
    t.integer  "front_rank",      :limit => 11, :default => -1
    t.integer  "section_rank",    :limit => 11, :default => -1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.integer  "number",      :limit => 11
    t.integer  "school_year", :limit => 11
    t.date     "est_date"
    t.boolean  "current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
