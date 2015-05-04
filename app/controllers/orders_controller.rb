class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def edit
    @order = Order.find(params[:id])
  end
  
  def update
    @order = Order.find(params[:id])
    order_params = params.require(:order).permit!
    @order.update(order_params)
    redirect_to @order
  end
end
