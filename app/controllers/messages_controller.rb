class MessagesController < ApplicationController

  def new
    user = User.find(@current_user.id)
    chat = ChatRoom.find_by(event_id: params[:id])
    Message.create(content: params[:message], chat_room_id: chat.id, user_id: user.id, user_email: user.email)
  end
  
end
