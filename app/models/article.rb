class Article < ActiveRecord::Base
  belongs_to :userInfo
  attr_accessible :body, :title
  has_many :comments,:dependent => :destroy
end
