class RemoveMoreFieldsFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :model_number, :string
    remove_column :orders, :description, :string
    remove_column :orders, :delivery_due_on, :date
  end
end
