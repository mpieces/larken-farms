class AuthenticatedController < ApplicationController
  before_action :authorize

  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  helper_method :current_user
end
