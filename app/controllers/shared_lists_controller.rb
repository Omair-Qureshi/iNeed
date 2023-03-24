class SharedListsController < ApplicationController
  def index
    @list = List.find(params[:list_id])
    @shared_list = SharedList.new
  end

  def new
    @shared_list = SharedList.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @user = User.find_by(email: params[:shared_list][:user])
    @shared_list = SharedList.new(user: @user, list: @list)
    if @shared_list.save
      redirect_to list_shared_lists_path(@list), status: :see_other
    else
      # render :new, status: :unprocessable_entity
    end
  end
end
