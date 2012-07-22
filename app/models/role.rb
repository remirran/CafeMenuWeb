class Role < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :users
  attr_accessible :name, :visible
end
