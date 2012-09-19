class Role < ActiveRecord::Base
  attr_accessible :role_desc, :role_name, :state
end
