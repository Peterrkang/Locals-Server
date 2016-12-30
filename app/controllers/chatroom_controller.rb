class ChatroomController < ApplicationController

  def show
    chat = ChatRoom.find(params[:id])
    user = @current_user.email
    render json: {messages: chat.messages, user: user}
  end

  def message
    user = User.find(@current_user.id)
    Message.create(content: params[:message], chat_room_id: params[:id], user_id: user.id, user_email: user.email)
  end

end
