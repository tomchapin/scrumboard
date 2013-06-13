class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :require_login

  private

  def current_user
    @current_user ||= begin
      User.find session[:user_id]
    rescue
      User.new
    end
  end

  def logged_in?
    current_user.persisted?
  end

  def require_login
    redirect_to login_path unless logged_in?
  end

  helper_method :current_user, :logged_in?

end
