class RemoveFieldFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :descritpion, :string
  end
end
