class AddDeliveryDateFieldToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_on, :date
  end
end
