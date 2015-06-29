class MakeProductsAJoinTable < ActiveRecord::Migration
  def up
    Product.delete_all
    remove_column :products, :name
    add_column :products, :user_id, :integer
  end

  def down
    Product.delete_all
    remove_column :products, :user_id
    add_column :products, :string
  end
end
