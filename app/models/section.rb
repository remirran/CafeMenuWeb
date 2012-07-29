class Section < ActiveRecord::Base
  attr_accessible :name, :latin_name, :section_id, :restaurant_id
  belongs_to :section
  belongs_to :restaurant
end
