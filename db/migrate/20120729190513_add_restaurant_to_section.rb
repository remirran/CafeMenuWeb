class AddRestaurantToSection < ActiveRecord::Migration
  def change
    change_table :sections do |t|
      t.references :restaurant
    end
  end
end
