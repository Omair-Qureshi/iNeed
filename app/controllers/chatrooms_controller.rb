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

  def create
    @chatroom = Chatroom.new(name: "iNeed Chat")
    ChatroomUser.create(user_id: current_user.id, chatroom: @chatroom)
    ChatroomUser.create(user_id: params["user_id"], chatroom: @chatroom)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
