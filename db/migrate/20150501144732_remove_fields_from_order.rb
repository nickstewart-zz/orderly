class RemoveFieldsFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :payment_terms, :integer
    remove_column :orders, :invoiced_on, :date
  end
end
