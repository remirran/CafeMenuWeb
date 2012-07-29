class Dish < ActiveRecord::Base
  attr_accessible :name, :desc, :image, :available
  belongs_to :restaurant
  belongs_to :section
end
