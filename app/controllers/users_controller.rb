class UsersController < ApplicationController
  def index
    @incident = Incident.recent.first
  end
  
  def show
    @incident = Incident.where(:twitter_id => params[:id]).recent.first
  end
end
