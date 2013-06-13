class UsersController < ApplicationController

  skip_before_filter :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      render :show
    else
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).delete
    redirect_to users_path
  end
end
