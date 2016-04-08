class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @statistics = @item.statistics
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
