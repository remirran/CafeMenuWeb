class Detail < ActiveRecord::Base
  attr_accessible :count
  belongs_to :order
end
