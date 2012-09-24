class Part < ActiveRecord::Base
  has_many :articles
  attr_accessible :desc, :name, :state
end
