class FixOrderColumnNameFromProducts < ActiveRecord::Migration
  def change
    rename_column :products, :order_id_id, :order_id
  end
end
