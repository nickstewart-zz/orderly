class RemoveSalesPersonFieldFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :sales_person, :string
  end
end
