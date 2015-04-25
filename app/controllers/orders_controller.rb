class OrdersController < ApplicationController
  def index
    @orders = ["Order 1", "Order 2", "Order 3"]
  end
end
