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

ActiveRecord::Schema.define(version: 20150914130942) do

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "recruiter_id"
    t.integer  "postings_id"
    t.string   "name"
    t.string   "function"
    t.string   "industry"
    t.string   "region"
    t.string   "market_cap"
    t.string   "ownership"
    t.text     "description"
    t.string   "avatar"
  end

  add_index "companies", ["postings_id"], name: "index_companies_on_postings_id"
  add_index "companies", ["recruiter_id"], name: "index_companies_on_recruiter_id"

  create_table "companies_users", id: false, force: :cascade do |t|
    t.integer "user_id",    null: false
    t.integer "company_id", null: false
  end

  add_index "companies_users", ["company_id", "user_id"], name: "index_companies_users_on_company_id_and_user_id"
  add_index "companies_users", ["user_id", "company_id"], name: "index_companies_users_on_user_id_and_company_id"

  create_table "interests", force: :cascade do |t|
    t.integer  "posting_id"
    t.integer  "candidate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "postings", force: :cascade do |t|
    t.integer  "recruiter_id"
    t.integer  "companies_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title"
    t.integer  "company_id"
    t.string   "headline"
    t.text     "description"
    t.string   "job_type"
    t.string   "industry"
    t.string   "region"
    t.string   "market_cap"
    t.string   "ownership"
  end

  add_index "postings", ["companies_id"], name: "index_postings_on_companies_id"
  add_index "postings", ["recruiter_id"], name: "index_postings_on_recruiter_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "company_id"
    t.integer  "role",                   default: 0
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
