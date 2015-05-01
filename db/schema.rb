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

ActiveRecord::Schema.define(version: 20150501045241) do

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "encrypt_pwd"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_categories", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_photos", force: true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "small_image_file_name"
    t.string   "small_image_content_type"
    t.integer  "small_image_file_size"
    t.datetime "small_image_updated_at"
  end

  add_index "project_photos", ["project_id"], name: "index_project_photos_on_project_id", using: :btree

  create_table "project_thumbnails", force: true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "project_thumbnails", ["project_id"], name: "index_project_thumbnails_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "brand_name"
    t.string   "company_name"
    t.string   "service_content"
    t.text     "desc"
    t.integer  "project_category_id"
    t.boolean  "is_public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["project_category_id"], name: "index_projects_on_project_category_id", using: :btree

end
