class ArticlesController < ApplicationController
  before_filter :find_article, :only => [:show, :edit, :update, :destroy]
  load_and_authorize_resource


  def index
    if  !params[:tag_id].nil?
      @article_ids = Array.new
      Tagging.where(['tag_id = ?', params[:tag_id]]).each do |tagging|
        @article_ids << tagging.article_id
      end
      @articles = Article.where(["id in (?)", @article_ids]).order("created_at DESC").paginate(:page => params[:page])
    else
      @articles = Article.order("created_at DESC").paginate(:page => params[:page])
    end
    @tags = Tag.order("created_at DESC")

  end

  def new
    @article = Article.new
    @tags = Tag.all
  end

  def create
    @article = Article.new(params[:article])
    @article.userInfo_id = current_user.id
    @article.save
    redirect_to :action => :index
  end

  def edit
  end

  def show
  end

  def update
    @article.update_attributes(params[:article])

    redirect_to :action => :show, :id => @article
  end

  def destroy
    @article.destroy

    redirect_to :action => :index
  end

  protected

  def find_article
    @article = Article.find(params[:id])
  end

end
