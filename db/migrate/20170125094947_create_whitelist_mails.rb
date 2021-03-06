class CreateWhitelistMails < ActiveRecord::Migration[5.0]
  def change
    create_table "whitelist_mails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string   "recipient",    default: "", null: false
      t.string   "senderdomain", default: "", null: false
      t.datetime "created_at",                null: false
      t.datetime "updated_at",                null: false
      t.index ["created_at"], name: "idx_created_at", using: :btree
      t.index ["recipient", "senderdomain"], name: "idx_recipient_senderdomain", unique: true, using: :btree
    end
  end
end
