class AddFieldToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :invoiced_on, :date
  end
end
