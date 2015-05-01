class RemoveFieldsFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :delivery_on, :date
  end
end
