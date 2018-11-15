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

ActiveRecord::Schema.define(version: 2018_08_09_200323) do

  create_table "devamsizliks", force: :cascade do |t|
    t.string "ad"
    t.string "soyad"
    t.string "tc_no"
    t.string "mesaj_tel"
    t.string "ogrsinif"
    t.string "devamsizlik_miktari"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "odevs", force: :cascade do |t|
    t.integer "ogrid"
    t.integer "ogretmen_id"
    t.string "ad"
    t.string "soyad"
    t.string "sinif"
    t.date "date"
    t.date "teslim_date"
    t.string "ders_adi"
    t.text "aciklama"
    t.string "durum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ogrencis", force: :cascade do |t|
    t.string "adi"
    t.string "soyadi"
    t.string "tc_no"
    t.string "tel_no"
    t.string "kan_grubu"
    t.string "okul"
    t.string "sinif"
    t.string "bolum"
    t.text "adres"
    t.string "veli_ad"
    t.string "veli_soyad"
    t.string "veli_tel"
    t.string "veli_tel2"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ogrsinif"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "ogretmen", force: :cascade do |t|
    t.string "adi"
    t.string "soyadi"
    t.string "tc_no"
    t.string "kan_grubu"
    t.float "aldigi_ucret"
    t.string "tel"
    t.string "tel2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brans"
    t.string "adres"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "sinifs", force: :cascade do |t|
    t.string "adi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "username"
    t.integer "ogrid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
