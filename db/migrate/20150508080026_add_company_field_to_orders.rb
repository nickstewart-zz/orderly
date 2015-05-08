class AddCompanyFieldToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customer_company, :string
  end
end
