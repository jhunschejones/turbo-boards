# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024_11_21_073710) do
  create_table "columns", force: :cascade do |t|
    t.text "title"
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "row_order"
    t.index ["project_id"], name: "index_columns_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text "title"
    t.text "body"
    t.integer "project_id", null: false
    t.integer "column_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "row_order"
    t.index ["column_id"], name: "index_tasks_on_column_id"
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  add_foreign_key "columns", "projects"
  add_foreign_key "tasks", "columns"
  add_foreign_key "tasks", "projects"
end
