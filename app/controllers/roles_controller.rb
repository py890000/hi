class RolesController < ApplicationController
  before_filter :find_role, :only => [ :show, :edit, :update, :destroy]
  layout "admin"
  def index
    @roles = Role.page(params[:page]).per(5)
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(params[:role])
    @role.save
    redirect_to :action => :index
  end

  def edit
  end

  def show
  end

  def update
    @role.update_attributes(params[:role])

    redirect_to :action => :show, :id => @role
  end

  def destroy
    @role.destroy

    redirect_to :action => :index
  end

  protected

  def find_role
    @role = role.find(params[:id])
  end

end
