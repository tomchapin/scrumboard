class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new params[:user]
    binding.pry
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
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
