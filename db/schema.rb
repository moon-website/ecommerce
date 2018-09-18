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

ActiveRecord::Schema.define(version: 20180918143535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "ADMIN"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name_vn"
    t.string "name_en"
    t.text "description_vn"
    t.text "description_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name_vn"
    t.string "name_en"
    t.string "price"
    t.text "description_vn"
    t.text "description_en"
    t.string "schedule_vn"
    t.string "schedule_en"
    t.string "summary_vn"
    t.string "summary_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "thumbnail_image_file_name"
    t.string "thumbnail_image_content_type"
    t.integer "thumbnail_image_file_size"
    t.datetime "thumbnail_image_updated_at"
    t.string "represent_image_1_file_name"
    t.string "represent_image_1_content_type"
    t.integer "represent_image_1_file_size"
    t.datetime "represent_image_1_updated_at"
    t.string "represent_image_2_file_name"
    t.string "represent_image_2_content_type"
    t.integer "represent_image_2_file_size"
    t.datetime "represent_image_2_updated_at"
    t.string "represent_image_3_file_name"
    t.string "represent_image_3_content_type"
    t.integer "represent_image_3_file_size"
    t.datetime "represent_image_3_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string "name_vn"
    t.string "name_en"
    t.string "price"
    t.text "description_vn"
    t.text "description_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title_vn"
    t.string "title_en"
    t.string "order"
    t.text "description_vn"
    t.text "description_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "thumbnail_image_file_name"
    t.string "thumbnail_image_content_type"
    t.integer "thumbnail_image_file_size"
    t.datetime "thumbnail_image_updated_at"
    t.string "represent_image_1_file_name"
    t.string "represent_image_1_content_type"
    t.integer "represent_image_1_file_size"
    t.datetime "represent_image_1_updated_at"
    t.string "represent_image_2_file_name"
    t.string "represent_image_2_content_type"
    t.integer "represent_image_2_file_size"
    t.datetime "represent_image_2_updated_at"
    t.string "represent_image_3_file_name"
    t.string "represent_image_3_content_type"
    t.integer "represent_image_3_file_size"
    t.datetime "represent_image_3_updated_at"
  end

  create_table "sub_services", force: :cascade do |t|
    t.string "title_vn"
    t.string "title_en"
    t.string "price"
    t.text "description_vn"
    t.text "description_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.bigint "service_id"
    t.index ["service_id"], name: "index_sub_services_on_service_id"
  end

end
