class AddFieldsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :login, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_index :users, :name, :unique => true
  end
  def down
    remove_index :users, :name
    remove_column :users, :login
    remove_column :users, :last_name
    remove_column :users, :first_name
  end
end
