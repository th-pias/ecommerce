module Ecommerce
  class ProductsController < ApplicationController
    def index
      @products = Ecommerce::Product.all
    end
  end
end
