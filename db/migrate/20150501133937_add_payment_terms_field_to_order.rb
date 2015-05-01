class AddPaymentTermsFieldToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :payment_terms, :integer
  end
end
