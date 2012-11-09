class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :signed_in?

  def user_required
    redirect_to '/auth/twitter?force_login=true' unless signed_in?
  end

  def signed_in?
    session[:username].present?
  end
end
