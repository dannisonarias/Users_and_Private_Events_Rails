class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_user
  helper_method :logged_in?

  private

  def sign_in
    cookies.permanent[:id] = @user.id
  end

  # Logs out the current user.
  def log_out
    # destroys cookies token
    cookies.permanent[:id] = nil
    @current_user = nil
  end

  # Returns the current logged-in user (if any).
  def current_user
    @id = cookies[:id]
    @current_user ||= User.find_by(id: @id)
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !@current_user.nil?
  end
end
