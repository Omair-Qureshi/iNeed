class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    # @user_chatroom = Chatroom.find_by(user_id: current_user.id)
    @user_chatrooms = current_user.chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end
end
