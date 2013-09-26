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

ActiveRecord::Schema.define(version: 20130919014730) do

  create_table "segments", force: true do |t|
    t.string   "ipa_symbol",         limit: 55, null: false
    t.string   "sampa_symbol",       limit: 55
    t.string   "cmudict_symbol",     limit: 55
    t.string   "name",               limit: 55
    t.string   "description"
    t.string   "ipa_place",          limit: 55
    t.string   "ipa_type",           limit: 55
    t.string   "ipa_manner",         limit: 55
    t.boolean  "sylabic"
    t.boolean  "consonantal"
    t.boolean  "aproximant"
    t.boolean  "sonorant"
    t.boolean  "voice"
    t.boolean  "spread_glotis"
    t.boolean  "constricted_glotis"
    t.boolean  "continuant"
    t.boolean  "nasal"
    t.boolean  "strident"
    t.boolean  "lateral"
    t.boolean  "delayed_release"
    t.boolean  "labial"
    t.boolean  "round"
    t.boolean  "coronal"
    t.boolean  "anterior"
    t.boolean  "distributed"
    t.boolean  "dorsal"
    t.boolean  "high"
    t.boolean  "low"
    t.boolean  "back"
    t.boolean  "tense"
    t.boolean  "radical"
    t.boolean  "laryngeal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
