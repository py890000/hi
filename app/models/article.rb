class Article < ActiveRecord::Base
  belongs_to :userInfo,:class_name => "User", :foreign_key => "userInfo_id"
  belongs_to :part
  attr_accessible :body, :title,:tag_list,:tag,:part_id
  has_many :comments,:dependent => :destroy
  has_many :taggings 
  has_many :tags, :through =>:taggings
  self.per_page = 5
  
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
  def tag=(tag_id)
    tag = Tag.find(tag_id)
    tagging = self.taggings.new 
    tagging.tag_id = tag.id


  end
  def tag
    self.tags.collect do |tag|
            tag.name
                end.join(", ")
  end



end
