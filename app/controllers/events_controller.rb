class EventsController < ApplicationController

  def index
    events = Event.all
    render json: events
  end

  def create
    event = Event.create(title: params[:title], description: params[:description], address: params[:address], lat: params[:lat],
    lng: params[:lng], user_id: @current_user.id, showInfo: false)

    if event
      render json: { event: event }, status: 200
    else
      render json: { error: "Can't Create Event" }, status: 400
    end
  end



end
