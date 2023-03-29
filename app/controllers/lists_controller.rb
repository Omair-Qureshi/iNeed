class ListsController < ApplicationController

  def index
    @lists = List.all
    @user_list = List.find_by(user_id: current_user.id)
    @item = Item.new

    @users = User.all
    @markers = @users.geocoded.map do |user|
      if user == current_user
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
          marker_html: render_to_string(partial: "marker")
        }
      else
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: {user: user}),
          marker_html: render_to_string(partial: "marker_others")
        }
      end
    end
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new()
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

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end
end
