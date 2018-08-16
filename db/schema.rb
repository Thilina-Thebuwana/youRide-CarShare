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

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180806090009) do
=======
ActiveRecord::Schema.define(version: 20180808045830) do
>>>>>>> MeryemKoken
=======
ActiveRecord::Schema.define(version: 20180814043334) do
=======
=======
>>>>>>> Connor
ActiveRecord::Schema.define(version: 20180814054642) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_bookings_on_car_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end
<<<<<<< HEAD
>>>>>>> mehmed
=======
>>>>>>> Connor

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "make"
    t.string "model"
    t.string "number_plate"
    t.string "color"
    t.string "seat_count"
    t.string "current_address"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Available"
  end
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> Thilina
=======
>>>>>>> mehmed
=======
>>>>>>> Connor

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
    t.string "provider"
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> Thilina
=======
>>>>>>> mehmed
=======
>>>>>>> Connor
    t.float "lattitude"
    t.float "latitude"
    t.float "longitude"
    t.string "ip"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> MeryemKoken
=======
>>>>>>> Thilina
=======
>>>>>>> mehmed
=======
>>>>>>> Connor
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
