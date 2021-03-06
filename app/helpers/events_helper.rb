module EventsHelper
  # require user to be logged in for access
  def require_login
    return unless current_user.nil?

    flash[:warning] = 'You must be logged in to access this section'
    redirect_to new_session_path
  end

  def show_author(post)
    current_user
    logged_in? ? post.user.username : 'hidden'
  end
end
