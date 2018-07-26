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

ActiveRecord::Schema.define(version: 2018_07_26_173818) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.integer "ragot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ragot_id"], name: "index_comments_on_ragot_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "ragot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ragot_id"], name: "index_likes_on_ragot_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.integer "recipient_id"
    t.integer "sender_id"
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_private_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_private_messages_on_sender_id"
    t.index ["user_id"], name: "index_private_messages_on_user_id"
  end

  create_table "ragots", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_ragots_on_user_id"
  end

  create_table "ragots_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "ragot_id"
    t.index ["ragot_id"], name: "index_ragots_tags_on_ragot_id"
    t.index ["tag_id"], name: "index_ragots_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_users_on_city_id"
  end

end
