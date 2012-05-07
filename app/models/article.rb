class Article < ActiveRecord::Base
  belongs_to :userInfo
  attr_accessible :body, :title
end
