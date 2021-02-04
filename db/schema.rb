# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_01_205205) do

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre"
    t.boolean "activo", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prestamos", force: :cascade do |t|
    t.integer "libro_id"
    t.integer "persona_id"
    t.datetime "fecha_devolucion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["libro_id"], name: "index_prestamos_on_libro_id"
    t.index ["persona_id"], name: "index_prestamos_on_persona_id"
  end

end
