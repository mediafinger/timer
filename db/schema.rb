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

ActiveRecord::Schema.define(version: 20160918134750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id", using: :btree
  end

  create_table "instances", force: :cascade do |t|
    t.integer  "task_id"
    t.text     "comment"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["task_id"], name: "index_instances_on_task_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_projects_on_client_id", using: :btree
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "status"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_tasks_on_project_id", using: :btree
    t.index ["user_id"], name: "index_tasks_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clients", "users", on_delete: :cascade
  add_foreign_key "instances", "tasks", on_delete: :cascade
  add_foreign_key "projects", "clients", on_delete: :cascade
  add_foreign_key "projects", "users", on_delete: :cascade
  add_foreign_key "tasks", "projects", on_delete: :cascade
  add_foreign_key "tasks", "users", on_delete: :cascade
end
