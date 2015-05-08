class AddOptionsFieldsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :options_standard, :string
    add_column :products, :options_additional, :string
  end
end
