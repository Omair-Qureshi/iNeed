class ItemsController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @list = List.find(params[:list_id])
    @item.list = @list
    if @item.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @list = @item.list
    @item.destroy
    redirect_to list_path(@list), status: :see_other
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
