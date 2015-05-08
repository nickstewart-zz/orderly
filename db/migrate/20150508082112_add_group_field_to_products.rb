class AddGroupFieldToProducts < ActiveRecord::Migration
  def change
    add_column :products, :group, :string
  end
end
