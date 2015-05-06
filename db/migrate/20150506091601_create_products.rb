class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.decimal :price
      t.string :descritpion
      t.references :order_id, index: true

      t.timestamps
    end
  end
end
