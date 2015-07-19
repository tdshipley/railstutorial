module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns currently logged in user
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end
end
