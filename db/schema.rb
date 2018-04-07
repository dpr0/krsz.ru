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

ActiveRecord::Schema.define(version: 20170925040551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", id: :serial, force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "answers", id: :serial, force: :cascade do |t|
    t.text "body"
    t.integer "question_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attaches", force: :cascade do |t|
    t.string "file"
    t.string "attachable_type"
    t.integer "attachable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachable_id", "attachable_type"], name: "index_attaches_on_attachable_id_and_attachable_type"
  end

  create_table "camera_items", id: :serial, force: :cascade do |t|
    t.integer "camera_model_id"
    t.integer "user_id"
    t.string "description"
    t.integer "price"
    t.integer "votes_count"
    t.boolean "visible"
    t.boolean "used"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camera_model_id"], name: "index_camera_items_on_camera_model_id"
    t.index ["user_id"], name: "index_camera_items_on_user_id"
  end

  create_table "camera_models", id: :serial, force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "mount"
    t.boolean "ff"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "dyxum_link"
    t.string "dyxum_img_link"
    t.string "release_year"
    t.string "status"
    t.string "viewfinder"
    t.string "format"
    t.string "effective_pixels"
    t.string "max_resolution"
  end

  create_table "ckeditor_assets", id: :serial, force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.integer "assetable_id"
    t.string "assetable_type", limit: 30
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"
  end

  create_table "delayed_jobs", id: :serial, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "entrances", force: :cascade do |t|
    t.integer "number"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "street"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lens_items", id: :serial, force: :cascade do |t|
    t.integer "lens_model_id"
    t.integer "user_id"
    t.string "description"
    t.integer "price"
    t.integer "votes_count"
    t.boolean "visible"
    t.boolean "used"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lens_model_id"], name: "index_lens_items_on_lens_model_id"
    t.index ["user_id"], name: "index_lens_items_on_user_id"
  end

  create_table "lens_models", id: :serial, force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "mount"
    t.integer "frmin"
    t.integer "frmax"
    t.float "diafmin"
    t.float "diafmax"
    t.boolean "fix"
    t.boolean "ff"
    t.boolean "macro"
    t.string "afdrive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "weather"
    t.string "product_code"
    t.integer "release_year"
    t.string "status"
    t.boolean "d_type_lens"
    t.boolean "slt_compatible"
    t.string "focus_design"
    t.boolean "stab"
    t.float "diafmin2"
    t.float "diafmax2"
    t.string "elements_group"
    t.float "angle_min"
    t.float "angle_max"
    t.integer "aperture_blades"
    t.integer "mdf"
    t.boolean "filter_rotate_focusing"
    t.boolean "filter_rotate_zooming"
    t.float "magnification"
    t.integer "filter_diameter"
    t.string "hood"
    t.string "color"
    t.float "length"
    t.integer "weight"
    t.string "dyxum_link"
    t.string "dyxum_img_link"
    t.string "dyxum_review_link"
    t.string "sony_forum_link"
  end

  create_table "oauth_access_grants", id: :serial, force: :cascade do |t|
    t.integer "resource_owner_id", null: false
    t.integer "application_id", null: false
    t.string "token", null: false
    t.integer "expires_in", null: false
    t.text "redirect_uri", null: false
    t.datetime "created_at", null: false
    t.datetime "revoked_at"
    t.string "scopes"
    t.index ["token"], name: "index_oauth_access_grants_on_token", unique: true
  end

  create_table "oauth_access_tokens", id: :serial, force: :cascade do |t|
    t.integer "resource_owner_id"
    t.integer "application_id"
    t.string "token", null: false
    t.string "refresh_token"
    t.integer "expires_in"
    t.datetime "revoked_at"
    t.datetime "created_at", null: false
    t.string "scopes"
    t.string "previous_refresh_token", default: "", null: false
    t.index ["refresh_token"], name: "index_oauth_access_tokens_on_refresh_token", unique: true
    t.index ["resource_owner_id"], name: "index_oauth_access_tokens_on_resource_owner_id"
    t.index ["token"], name: "index_oauth_access_tokens_on_token", unique: true
  end

  create_table "oauth_applications", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.string "uid", null: false
    t.string "secret", null: false
    t.text "redirect_uri", null: false
    t.string "scopes", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["uid"], name: "index_oauth_applications_on_uid", unique: true
  end

  create_table "questions", id: :serial, force: :cascade do |t|
    t.text "body"
    t.string "title", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_id", default: 0
    t.integer "entrance_id", default: 0
  end

  create_table "users", id: :serial, force: :cascade do |t|
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
    t.boolean "admin", default: false
    t.string "firstname"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "camera_items", "camera_models"
  add_foreign_key "camera_items", "users"
  add_foreign_key "lens_items", "lens_models"
  add_foreign_key "lens_items", "users"
  add_foreign_key "oauth_access_grants", "oauth_applications", column: "application_id"
  add_foreign_key "oauth_access_tokens", "oauth_applications", column: "application_id"
end
