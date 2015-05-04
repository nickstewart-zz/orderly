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
    @order.update(order_params)
    redirect_to @order
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to @order
  end
  
  private
  
  def order_params
    params.require(:order).permit!
  end
end
