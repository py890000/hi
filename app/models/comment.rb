class Comment < ActiveRecord::Base
  belongs_to :userInfo
  belongs_to :article
  attr_accessible :author_name, :body,:userInfo
end
