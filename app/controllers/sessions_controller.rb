class SessionsController < ApplicationController
  def create
    session[:username] = auth_hash['uid']
    redirect_to new_incident_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end