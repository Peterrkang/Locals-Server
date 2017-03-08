class ChatroomController < ApplicationController

  def show
    chat = ChatRoom.find_by(event_id: params[:id])
    user = @current_user.email
    render json: {messages: chat.messages, user: user, title: chat.title}
  end

  def message
    puts params
    user = User.find(@current_user.id)
    chat = ChatRoom.find_by(event_id: params[:id])
    Message.create(content: params[:message], chat_room_id: chat.id, user_id: user.id, user_email: user.email)
  end

end
