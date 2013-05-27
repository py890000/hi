class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
  end
  def hot
    @tags = Tag.all.order("created_at ASC")
  end
end
