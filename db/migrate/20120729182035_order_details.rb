class OrderDetails < ActiveRecord::Migration
  def up
    change_table :orders do |t|
      t.float :sum
      t.timestamps
    end
    create_table :details do |t|
      t.references :order
      t.references :dish
      t.integer :count
    end
    change_table :cities do |t|
      t.references :country
    end
  end

  def down
    remove_column :orders, :sum
    drop_table :details
  end
end
