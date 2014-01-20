class IncidentsController < ApplicationController
  before_filter :user_required, only: [:new, :create]

  def index
    @incident = Incident.recent.first
  end

  def show
    @incident = Incident.where(twitter_id: params[:id]).recent.first
    respond_to do |format|
      if @incident
        format.html
        format.json do
          render json: {username: @incident.twitter_id, date: @incident.date}
        end
      else
        format.html { render 'claim' }
        format.json do
          render json: {username: params[:id], date: nil}, :status => 404
        end
      end
    end
  end

  def new
    @incident = Incident.new(date: Date.current)
    @incident.twitter_id = session[:username]
  end
  
  def create
    incident_params = params.require(:incident).permit(:date)
    @incident = Incident.new(incident_params)
    @incident.twitter_id = session[:username]
    @incident.save!
    redirect_to incident_path(@incident.twitter_id)
  end
end
