class Tagging < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
  # attr_accessible :title, :body
end
