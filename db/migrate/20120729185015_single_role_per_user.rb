class SingleRolePerUser < ActiveRecord::Migration
  def up
    drop_table :roles_users
    change_table :users do |t|
      t.references :role
    end
  end

  def down
    create_table :roles_users do |t|
      t.references :user, :role
    end
    remove_column :user, :role_id
  end
end

