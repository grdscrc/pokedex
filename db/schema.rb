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

ActiveRecord::Schema.define(version: 2022_02_02_155836) do

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "type1"
    t.string "type2"
    t.string "total"
    t.string "hp"
    t.string "attack"
    t.string "defense"
    t.string "spAtk"
    t.string "spDef"
    t.string "speed"
    t.string "generation"
    t.string "legendary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
