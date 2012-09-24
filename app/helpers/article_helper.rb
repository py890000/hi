module ArticleHelper
  def part_options
    Part.all.map{|c| [c.name,c.id]}
  end
end
