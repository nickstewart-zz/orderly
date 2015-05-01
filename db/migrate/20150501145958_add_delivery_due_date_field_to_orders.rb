class AddDeliveryDueDateFieldToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :delivery_due_on, :date
  end
end
