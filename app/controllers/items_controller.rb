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
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
    @list = @item.list
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_back(fallback_location: list_path(@item.list))
  end

  def destroy
    @item = Item.find(params[:id])
    @list = @item.list
    @item.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :completed, :photo)
  end
end
