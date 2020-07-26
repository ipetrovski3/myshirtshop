class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :product_id, :image)
  end
end
