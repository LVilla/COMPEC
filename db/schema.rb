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

ActiveRecord::Schema.define(version: 20150131002544) do

  create_table "albums", force: :cascade do |t|
    t.string   "album",       limit: 255
    t.integer  "artist_id",   limit: 4
    t.integer  "composer_id", limit: 4
    t.integer  "genre_id",    limit: 4
    t.integer  "año",         limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "albums", ["artist_id"], name: "index_albums_on_artist_id", using: :btree
  add_index "albums", ["composer_id"], name: "index_albums_on_composer_id", using: :btree
  add_index "albums", ["genre_id"], name: "index_albums_on_genre_id", using: :btree

  create_table "artists", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "apellido",         limit: 255
    t.string   "lugar_nacimiento", limit: 255
    t.date     "fecha_nacimiento"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "composers", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "apellido",         limit: 255
    t.string   "lugar_nacimiento", limit: 255
    t.date     "fecha_nacimiento"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "genero",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "records", force: :cascade do |t|
    t.string   "discografica",  limit: 255
    t.string   "sede",          limit: 255
    t.integer  "año_fundacion", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "titulo",      limit: 255
    t.integer  "album_id",    limit: 4
    t.integer  "artist_id",   limit: 4
    t.integer  "composer_id", limit: 4
    t.integer  "genre_id",    limit: 4
    t.integer  "año",         limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "songs", ["album_id"], name: "index_songs_on_album_id", using: :btree
  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  add_index "songs", ["composer_id"], name: "index_songs_on_composer_id", using: :btree
  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.integer  "artist_id",  limit: 4
    t.integer  "genre_id",   limit: 4
    t.integer  "año",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "videos", ["artist_id"], name: "index_videos_on_artist_id", using: :btree
  add_index "videos", ["genre_id"], name: "index_videos_on_genre_id", using: :btree

  add_foreign_key "albums", "artists"
  add_foreign_key "albums", "composers"
  add_foreign_key "albums", "genres"
  add_foreign_key "songs", "albums"
  add_foreign_key "songs", "artists"
  add_foreign_key "songs", "composers"
  add_foreign_key "songs", "genres"
  add_foreign_key "videos", "artists"
  add_foreign_key "videos", "genres"
end
