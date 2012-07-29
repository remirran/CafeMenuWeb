class CreateRestaurants < ActiveRecord::Migration
  def up
    add_column :countries, :latin_name, :string
    create_table :cities do |t|
      t.string :name
      t.string :latin_name
      t.timestamps
    end
    create_table :restaurants do |t|
      t.string :name
      t.string :latin_name
      t.text :check_header
      t.text :check_footer
      t.references :city
      t.timestamps
    end
    create_table :restaurants_users do |t|
      t.references :restaurant, :user
    end
    create_table :cuisines do |t|
      t.string :name
      t.string :latin_name
    end
    create_table :dishes do |t|
      t.references :restaurant
      t.references :cuisine
      t.string :name
      t.text :desc
      t.string :image
      t.boolean :available
    end
    create_table :orders do |t|
      t.references :restaurant
      t.references :user #waitress
    end
  end
  def down
    drop_table :orders
    drop_table :dishes
    drop_table :cuisines
    drop_table :restaurants_users
    drop_table :restaurants
    drop_table :cities
    remove_column :countries, :latin_name
  end
end
