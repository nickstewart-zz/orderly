class RemoveTermsFieldFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :terms, :string
  end
end
