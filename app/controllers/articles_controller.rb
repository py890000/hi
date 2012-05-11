class ArticlesController < ApplicationController
  before_filter :find_article, :only => [ :show, :edit, :update, :destroy]
  
  
  def index
    @articles = Article.page(params[:page]).per(5)
  end

  def new
    @article = Article.new
  end  
  
  def create
    @article = Article.new(params[:article])
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
