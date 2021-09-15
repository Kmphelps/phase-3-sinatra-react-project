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

ActiveRecord::Schema.define(version: 2021_09_15_162723) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "description"
    t.string "img"
    t.integer "category_id"
    t.string "date"
    t.string "time"
    t.string "org_name"
    t.integer "volunteer_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
  end

end
