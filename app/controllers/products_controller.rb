class ProductsController < ApplicationController
  def index
    @order = Order.find(params[:id])
    @roducts = @order.products
  end

end
