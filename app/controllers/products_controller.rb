class ProductsController < ApplicationController
  def index
    @order = Order.find(params[:order_id])
    @products = @order.products
  end

end
