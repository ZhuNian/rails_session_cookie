class ChangeUserTableAddPassword < ActiveRecord::Migration
  def up
    rename_table :users, :user_legacy
    create_table :users do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end

  def down
    rename_table :user_legacy, :users
  end
end
