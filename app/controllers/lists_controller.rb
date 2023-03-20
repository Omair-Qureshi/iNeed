class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new()
  end

  def create
    @list = List.new()
    @list.user = current_user
    @list.status = "pending"
    @list.save
    redirect_to list_path(@list)
  end
end
