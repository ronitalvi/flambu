class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end



  def new
    @item = Item.new
  end

  def create
    ## TO DO: when categories is created and tags add it to params
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])

  end

  def edit
  end

  def update
    if @item.update
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])

  end

  def item_params
    params.require(:item).permit(:description, :location, :title)
  end

end
