class Roles < ActiveRecord::Migration
  def up
	create_table :roles do |t|
		t.string :name, :null => false, :default => ""
		t.boolean :visible
		t.timestamps
	end
	add_index :roles, :name, :unique => true
	create_table :roles_users do |t|
		t.references :role, :user
	end
  end

  def down
	remove_index :roles, :name
	drop_table :roles
	drop_table :roles_users
  end
end
