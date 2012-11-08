class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_required
    redirect_to root_path unless session[:username]
  end
end
