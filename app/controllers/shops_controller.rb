# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show]
  before_action :available_categories

  # GET /shops
  def index
    @shops = Shop.all
  end

  def available_categories
    @categories = Taxon.joins(:shops).distinct
  end

  # GET /shops/1
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_shop
    @shop = Shop.find_by(slug: params[:slug])
  end

  # Only allow a list of trusted parameters through.
  def shop_params
    params.require(:shop).permit(:name, :slug, :available_on)
  end
end
