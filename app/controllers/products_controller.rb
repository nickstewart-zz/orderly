class ProductsController < ApplicationController
  def index
  	@order = Order.find(params[:order_id])
    @products = @order.products
  end

  def new
    @order = Order.find(params[:order_id])
    @product = @order.products.new 
  end
end
