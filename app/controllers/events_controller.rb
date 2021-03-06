class EventsController < ApplicationController

  def show
    events = Event.where("created_at > ?", Time.new - 4.hours)
    render json: events
  end

  def new
    event = Event.create(title: params[:title], description: params[:description], address: params[:address], lat: params[:lat],
    lng: params[:lng], user_id: @current_user.id)
    chatroom = ChatRoom.create(title: params[:title], user_id: @current_user.id, event_id: event.id)
    if event && chatroom
      render json: { event: event }, status: 200
    else
      render json: { error: "Can't Create Event or chatroom" }, status: 400
    end
  end



end
