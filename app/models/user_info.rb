class UserInfo < ActiveRecord::Base
  attr_accessible :age, :creatTime, :email, :loginer, :password, :updateTime
end
