class ChangeCustomerFieldInOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :customer, :customer_name
  end
end
