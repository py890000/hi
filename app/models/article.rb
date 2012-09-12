class Article < ActiveRecord::Base
  belongs_to :userInfo
  attr_accessible :body, :title,:tag_list
  has_many :comments,:dependent => :destroy
  has_many :taggings 
  has_many :tags, :through =>:taggings
  
  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end
  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}

    tag_names.each do |tag_name|
      tag = Tag.find_or_create_by_name(tag_name)
      tagging = self.taggings.new
      tagging.tag_id = tag.id
    end
  end    
end
