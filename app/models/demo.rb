class Demo < ActiveRecord::Base
  attr_accessible :login_name, :login_password, :userInfo
  
  validates_presence_of :login_name
end
