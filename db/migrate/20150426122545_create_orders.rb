class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer
      t.string :model_number
      t.string :description
      t.string :sales_person
      t.decimal :total
      t.string :terms

      t.timestamps
    end
  end
end
