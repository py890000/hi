class UsersController < ApplicationController
  before_filter :find_user, :only => [ :show, :edit, :update, :destroy]
  layout "admin"
  def index
    @users = User.page(params[:page]).per(5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to :action => :index
  end

  def edit
  end

  def show
  end

  def update
    @user.update_attributes(params[:user])

    redirect_to :action => :index
  end

  def destroy
    @user.destroy

    redirect_to :action => :index
  end

  protected

  def find_user
    @user = User.find(params[:id])
  end

end
