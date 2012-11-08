class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_required
    redirect_to '/auth/twitter?force_login=true' unless session[:username]
  end
end
