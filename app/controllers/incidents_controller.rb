class IncidentsController < ApplicationController
  before_filter :user_required, only: [:new, :create]

  def index
    @incident = Incident.recent.first
  end

  def show
    @incident = Incident.where(twitter_id: params[:id]).recent.first
  end

  def new
    @incident = Incident.new(date: Date.current)
    @incident.twitter_id = session[:username]
  end
  
  def create
    @incident = Incident.new(params[:incident])
    @incident.twitter_id = session[:username]
    @incident.save!
    redirect_to incident_path(@incident.twitter_id)
  end
end
