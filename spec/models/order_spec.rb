describe "An Order" do
  it "has many products" do
    order = Order.new(order_attributes)

    product1 = order.products.new(product_attributes)
    product2 = order.products.new(product_attributes(code: "F-35"))
    
    expect(order.products).to include(product1)
    expect(order.products).to include(product2)
  end

  it "deletes associated products" do
    order = Order.create(order_attributes)

    order.products.create(product_attributes)

    expect {
      order.destroy
    }.to change(Product, :count).by(-1)
  end
end