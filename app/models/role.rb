=begin

=end


class Role < ActiveRecord::Base
  has_many :users
  attr_accessible :role_desc, :role_name, :state
end
