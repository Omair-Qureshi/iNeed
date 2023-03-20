class ItemsController < ApplicationController

  def show
    @item = Item.find(parms[:id])
  end

  def new
    @list = List.find(params[:list_id])
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @list = List.find(params[:list_id])
    @item.list = @list
    @item.save
    redirect_to list_path(@list)
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
