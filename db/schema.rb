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

ActiveRecord::Schema.define(version: 2019_09_29_035925) do

  create_table "attribute_option_values", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.integer "attribute_option_id"
    t.boolean "archived", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attribute_option_values_collaterals", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "collateral_id", null: false
    t.bigint "attribute_option_value_id", null: false
    t.index ["attribute_option_value_id", "collateral_id"], name: "idx_collateral_id_onattribute_option_value_id", unique: true
    t.index ["collateral_id", "attribute_option_value_id"], name: "idx_collateral_id_on_attribute_option_value_id", unique: true
  end

  create_table "attribute_options", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.boolean "archived", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attribute_options_collaterals", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "collateral_id", null: false
    t.bigint "attribute_option_id", null: false
    t.index ["attribute_option_id", "collateral_id"], name: "idx_collateral_id_onattribute_option_id", unique: true
    t.index ["collateral_id", "attribute_option_id"], name: "idx_collateral_id_on_attribute_option_id", unique: true
  end

  create_table "collateral_attribute_options", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "collateral_id"
    t.integer "attribute_option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collateral_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.boolean "archived", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collaterals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.boolean "archived", default: false
    t.decimal "cost_price", precision: 10
    t.integer "collateral_category_id"
    t.integer "collateral_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "apartment"
    t.string "state"
    t.string "city"
    t.string "zipcode"
    t.string "security_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
