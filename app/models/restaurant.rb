class Restaurant < ActiveRecord::Base
  attr_accessible :name, :latin_name, :check_footer, :check_header, :city_id, :users_attributes
  belongs_to :city
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :users, :allow_destroy => true
end
