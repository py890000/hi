class PartsController < ApplicationController
  before_filter :find_part, :only => [ :show, :edit, :update, :destroy]
  layout "admin"
  def index
    @parts = Part.page(params[:page]).per(5)
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.new(params[:part])
    @part.save
    redirect_to :action => :index
  end

  def edit
  end

  def show
  end

  def update
    @part.update_attributes(params[:part])

    redirect_to :action => :index
  end

  def destroy
    @part.destroy

    redirect_to :action => :index
  end

  protected

  def find_part
    @part = Part.find(params[:id])
  end

end
