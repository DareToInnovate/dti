class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "username", :limit => 40
      t.string "password_digest"
      t.integer "admin_type", default: 0
      t.timestamps
    end
  end
end
