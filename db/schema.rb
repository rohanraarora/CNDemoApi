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

ActiveRecord::Schema.define(version: 20160901104532) do

  create_table "batches", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "name"
    t.float    "price"
    t.date     "start_date"
    t.integer  "schedule"
    t.integer  "strength"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "batches", ["course_id"], name: "index_batches_on_course_id"

  create_table "batches_team_members", id: false, force: :cascade do |t|
    t.integer "batch_id",       null: false
    t.integer "team_member_id", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "overview"
    t.string   "curriculum"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "cover_pic_file_name"
    t.string   "cover_pic_content_type"
    t.integer  "cover_pic_file_size"
    t.datetime "cover_pic_updated_at"
  end

  create_table "event_images", force: :cascade do |t|
    t.integer  "event_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "event_images", ["event_id"], name: "index_event_images_on_event_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "description"
    t.string   "venue"
    t.string   "speaker"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "social_profiles", force: :cascade do |t|
    t.string   "label"
    t.string   "url"
    t.integer  "team_member_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "social_profiles", ["team_member_id"], name: "index_social_profiles_on_team_member_id"

  create_table "team_members", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "qualifications"
    t.string   "teaching_experience"
    t.string   "industry_experience"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

end
