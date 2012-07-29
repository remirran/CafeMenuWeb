class City < ActiveRecord::Base
  attr_accessible :name, :latin_name, :country_id
  belongs_to :country
end
