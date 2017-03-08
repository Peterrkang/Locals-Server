class ChatroomsController < ApplicationController
  
  def show
    chat = ChatRoom.find_by(event_id: params[:id])
    user = @current_user.email
    render json: {messages: chat.messages, user: user, title: chat.title}
  end

end
