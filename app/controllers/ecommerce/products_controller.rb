module Ecommerce
  class ProductsController < ApplicationController
    def index
      @products = Ecommerce::Product.all
    end

    def show
    end

    private
    def set_product
      @product = Ecommerce::Product.find_by_id(params[:id])
    end

    def product_params
      params.require(:ecommerce_product).permit!
    end

  end
end
