class ShopsController < ApplicationController
  def index
    @shops = Shop.all.order(:name)
  end
  
  def show
    @shop = Shop.find(params[:id])
  end
end
