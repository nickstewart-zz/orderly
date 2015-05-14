class ProductsController < ApplicationController
  def index
  	@order = Order.find(params[:order_id])
    @products = @order.products
  end

  def new
    @order = Order.find(params[:order_id])
    @product = @order.products.new 
  end

  def create
    @order = Order.find(params[:order_id])
    @product = @order.products.new(params.require(:product).permit!)
    if @product.save
      redirect_to @order, notice: "Product successfully added to order!"
    else
      render :new
    end
  end
end
