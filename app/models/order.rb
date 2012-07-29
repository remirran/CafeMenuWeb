class Order < ActiveRecord::Base
  attr_accessible :sum
  belongs_to :restaurant
  belongs_to :user
end
