class SessionsController < ApplicationController

  def new
  end

  def create
    User.authenticate(params[:email], params[:password])
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'You are logged out.'
  end

end
